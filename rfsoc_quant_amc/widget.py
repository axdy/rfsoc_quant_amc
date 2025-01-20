__author__ = "Andrew Maclellan"
__organisation__ = "StrathSDR"
from ipywidgets import interact, interactive, fixed, interact_manual
import ipywidgets as ipw
import random
import plotly.graph_objs as go
import plotly.subplots as sp
from plotly.subplots import make_subplots
import numpy as np
from IPython.display import display
from rfsoc_quant_amc.overlay import Overlay
import pickle
from IPython.display import Javascript, display
import xrfdc

align_kw = dict(
    _css = (('.widget-label', 'min-width', '20ex'),),
    margin = '0px 0px 5px 12px'
)

class AMCWidget():
    def __init__(self, ol, data, classes, snrs):
        np.random.seed(1234)
        self.data = data
        self.classes = classes
        self.snrs = snrs
        self.ol = ol

        self._plotout = go.FigureWidget(
            layout = go.Layout(
                title='Received Signal',
                width = 500,
                xaxis_title = 'time (samples)',
                yaxis_title = 'amplitude',
                font = dict(size=16)
            )
        )
        self._plotin = go.FigureWidget(
            layout = go.Layout(
                title='Transmitted Signal',
                width = 500,
                xaxis_title = 'time (samples)',
                yaxis_title = 'amplitude',
                font = dict(size=16)
            )
        )
        self._bar_0 = go.FigureWidget(
            layout = go.Layout(
                title='Classification Confidence 16w16a',
                width=500,
                height=400,
                xaxis_title='modulation schemes',
                yaxis_title='percentage confidence (%)',
                font = dict(size=16),
                yaxis = dict(range=[0,100]),
            )
        )
        self._cm_0 = go.FigureWidget(
            layout = go.Layout(
                title='Prediction Confusion Matrix 16w16a',
                width = 500,
                height = 500,
                xaxis_title = 'true label',
                yaxis_title = 'predicted label',
                font = dict(size=16)
            )
        )
        self._bar_1 = go.FigureWidget(
            layout = go.Layout(
                title='Classification Confidence 8w16a',
                width=500,
                height=400,
                xaxis_title='modulation schemes',
                yaxis_title='percentage confidence (%)',
                font = dict(size=16),
                yaxis = dict(range=[0,100]),
            )
        )
        self._cm_1 = go.FigureWidget(
            layout = go.Layout(
                title='Prediction Confusion Matrix 8w16a',
                width = 500,
                height = 500,
                xaxis_title = 'true label',
                yaxis_title = 'predicted label',
                font = dict(size=16)
            )
        )
        self._bar_2 = go.FigureWidget(
            layout = go.Layout(
                title='Classification Confidence 4w16a',
                width=500,
                height=400,
                xaxis_title='modulation schemes',
                yaxis_title='percentage confidence (%)',
                font = dict(size=16),
                yaxis = dict(range=[0,100]),
            )
        )
        self._cm_2 = go.FigureWidget(
            layout = go.Layout(
                title='Prediction Confusion Matrix 4w16a',
                width = 500,
                height = 500,
                xaxis_title = 'true label',
                yaxis_title = 'predicted label',
                font = dict(size=16)
            )
        )
        self.mod_panel = self.widget_display()
        
    def display(self):
        display(self.mod_panel)
    
    def widget_display(self):
        self.mod_choice = ipw.Dropdown(
            options=self.classes,
            value='QPSK',
            description='Mods:',
            disabled=False,
            layout = {'width': '200px'},
            **align_kw
        )
        self.snr_slider = ipw.SelectionSlider(
            options = ['-20', '-16', '-12', '-8', '-4', '0', '4', '8', '12', '16', '20', '24', '28','30'],
            value = '30',
            description = 'SNR (dB)',
            disabled = False,
            continuous_update = False,
            orientation='horizontal',
            **align_kw
        )
        self.phase_slider = ipw.FloatSlider(
            value = 0,
            min = -179.0,
            max = 179.0,
            step = 2,
            description = 'Phase Offset',
            disabled=False,
            continuous_update=False,
            orientation='horizontal',
            readout_format='.1f',
            **align_kw
            )
        self.button = ipw.Button(
            description='Update',
            disabled=False,
            button_style='', # 'success', 'info', 'warning', 'danger' or ''
            tooltip='Update',
            icon='arrows-rotate', # (FontAwesome names without the `fa-` prefix)
            layout = {'width':'200px','margin':'0 0 0 50px'},
            **align_kw
        )
        self.rx_button = ipw.Button(
            description='Receive',
            disabled=False,
            button_style='danger',
            tooltip='Receive',
            **align_kw
        )
        self.freq_mhz = ipw.BoundedFloatText(value = 400.0,
                                             min = 100.0,
                                             max = 500.0,
                                             step = 5.0,
                                             description='Carrier Frequency (MHz)',
                                             style={'description_width': 'initial'},
                                             disabled=False)
        self.play = ipw.Play(min=1, interval=500, layout = {'margin':'0 0 0 50px'},)
        self.play.observe(self.play_press, names='value')
        self.button_box = ipw.Box([self.button])
        self.button.on_click(self.press_button)
        self.rx_button.on_click(self.press_rx_button)
        self.freq_mhz.observe(self.update_fc, 'value')
        self.update_mod = ipw.VBox([self.mod_choice, self.snr_slider,self.button], layout = ipw.widgets.Layout(padding='0 0 50px 0'))
        self.rx_phase = ipw.VBox([self.phase_slider, self.play], layout = ipw.widgets.Layout(padding='0 0 50px 0'))
        button_label = ipw.HTML(value="<u><b>Transmission Control</b></u>")
        freq_label = ipw.HTML(value="<u><b>RFSoC Frequency</b></u>")
        button_vert = ipw.VBox([button_label, self.update_mod, self.rx_phase,freq_label, self.freq_mhz], layout = ipw.widgets.Layout(width='350px'))
        self._plot_box = ipw.HBox([button_vert, self._plotin, self._plotout])
        def create_expanded_button(description, button_style):
            return ipw.Button(description=description, button_style=button_style, layout=ipw.Layout(height='auto', width='auto'))

        # Grid Box
        grid = ipw.GridspecLayout(3,3)
        grid[0,0] = button_vert
        grid[0,1] = ipw.Box([self._plotin])
        grid[0,2] = ipw.Box([self._plotout])
        grid[1,0] = ipw.Box([self._cm_0])
        grid[1,1] = ipw.Box([self._cm_1])
        grid[1,2] = ipw.Box([self._cm_2])
        grid[2,0] = ipw.Box([self._bar_0])
        grid[2,1] = ipw.Box([self._bar_1])
        grid[2,2] = ipw.Box([self._bar_2])
        return grid
    
    def update_fc(self,value):
        self.ol.adc_block.MixerSettings['Freq'] = value['new']
        self.ol.dac_block.MixerSettings['Freq'] = value['new']
        self.ol.dac_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.ol.dac_tile.SetupFIFO(True)
        self.ol.adc_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.ol.adc_tile.SetupFIFO(True)
        
    
    def play_press(self,_):
        self.ol.phase_offset_tx = self.phase_slider.value
        mod = self.mod_choice.value
        [y_pred_0, y_pred_1, y_pred_2, re_data, im_data] = self.receive_data()
        if not self._plotout.data:
            self._plotout.add_trace(go.Scatter(y=re_data, name='real', line_color='#219ebc'))
            self._plotout.add_trace(go.Scatter(y=im_data, name='imag', line_color='#ffb703'))
        else:
            self._plotout.data[0]['y'] = re_data
            self._plotout.data[1]['y'] = im_data
        # 16w16a
        if not self._bar_0.data:
            self._bar_0.add_trace(go.Bar(x=self.classes, y=100*y_pred_0,marker={'color':'#219ebc'}))
        else:
            self._bar_0.data[0]['y'] = 100*y_pred_0
        # 8w16a
        if not self._bar_1.data:
            self._bar_1.add_trace(go.Bar(x=self.classes, y=100*y_pred_1,marker={'color':'#219ebc'}))
        else:
            self._bar_1.data[0]['y'] = 100*y_pred_1
        # 4w16a
        if not self._bar_2.data:
            self._bar_2.add_trace(go.Bar(x=self.classes, y=100*y_pred_2,marker={'color':'#219ebc'}))
        else:
            self._bar_2.data[0]['y'] = 100*y_pred_2
        self.confusion_matrix(y_pred_0, y_pred_1, y_pred_2, mod)
    
    def extract_data(self,mod,snr):
        random_idx = np.random.randint(self.data[mod,snr].shape[2])
        return self.data[mod,snr][:,:,random_idx]
    
    def press_button(self,_):
        self.ol.phase_offset_tx = self.phase_slider.value
        mod = self.mod_choice.value
        snr = self.snr_slider.value
        sample_X = self.extract_data(mod,snr)
        [y_pred_0, y_pred_1, y_pred_2, re_data, im_data] = self.predict(sample_X)
        if not self._plotout.data:
            self._plotout.add_trace(go.Scatter(y=re_data, name='real', line_color='#219ebc'))
            self._plotout.add_trace(go.Scatter(y=im_data, name='imag', line_color='#ffb703'))
        else:
            self._plotout.data[0]['y'] = re_data
            self._plotout.data[1]['y'] = im_data
        if not self._plotin.data:
            self._plotin.add_trace(go.Scatter(y=sample_X[0,:], name='real', line_color='#219ebc'))
            self._plotin.add_trace(go.Scatter(y=sample_X[1,:], name='imag', line_color='#ffb703'))
        else:
            self._plotin.data[0]['y'] = sample_X[0,:]
            self._plotin.data[1]['y'] = sample_X[1,:]
        if not self._bar_0.data:
            self._bar_0.add_trace(go.Bar(x=self.classes, y=100*y_pred_0,marker={'color':'#219ebc'}))
        else:
            self._bar_0.data[0]['y'] = 100*y_pred_0
        if not self._bar_1.data:
            self._bar_1.add_trace(go.Bar(x=self.classes, y=100*y_pred_1,marker={'color':'#219ebc'}))
        else:
            self._bar_1.data[0]['y'] = 100*y_pred_1
        if not self._bar_2.data:
            self._bar_2.add_trace(go.Bar(x=self.classes, y=100*y_pred_2,marker={'color':'#219ebc'}))
        else:
            self._bar_2.data[0]['y'] = 100*y_pred_2
        self.confusion_matrix(y_pred_0, y_pred_1, y_pred_2, mod)
        
    def press_rx_button(self,_):
        self.ol.phase_offset_tx = self.phase_slider.value
        mod = self.mod_choice.value
        [y_pred_0, y_pred_1, y_pred_2, re_data, im_data] = self.receive_data()
        if not self._plotout.data:
            self._plotout.add_trace(go.Scatter(y=re_data, name='real', line_color='#219ebc'))
            self._plotout.add_trace(go.Scatter(y=im_data, name='imag', line_color='#ffb703'))
        else:
            self._plotout.data[0]['y'] = re_data
            self._plotout.data[1]['y'] = im_data
        if not self._bar_0.data:
            self._bar_0.add_trace(go.Bar(x=self.classes, y=100*y_pred_0,marker={'color':'#219ebc'}))
        else:
            self._bar_0.data[0]['y'] = 100*y_pred_0
        if not self._bar_1.data:
            self._bar_1.add_trace(go.Bar(x=self.classes, y=100*y_pred_1,marker={'color':'#219ebc'}))
        else:
            self._bar_1.data[0]['y'] = 100*y_pred_1
        if not self._bar_2.data:
            self._bar_2.add_trace(go.Bar(x=self.classes, y=100*y_pred_2,marker={'color':'#219ebc'}))
        else:
            self._bar_2.data[0]['y'] = 100*y_pred_2
        self.confusion_matrix(y_pred_0, y_pred_1, y_pred_2, mod)
    
    def predict(self, sample_X):
        y = np.int16(sample_X*np.int16(pow(2,13)))
        z = np.zeros(2*4096, dtype=np.int16)
        z[0::2] = y[0,:]
        z[1::2] = y[1,:]
        self.ol.send(z)
        self.ol.cnn.write(0x100,1)
        self.ol.cnn_1.write(0x100,1)
        self.ol.cnn_2.write(0x100,1)
        [y_pred0,y_pred1,y_pred2,complex_data] = self.ol.receive()
        y_pred0 = self.softmax(y_pred0)
        y_pred1 = self.softmax(y_pred1)
        y_pred2 = self.softmax(y_pred2)
        [re_data, im_data] = self.complex2realimag(complex_data)
        return y_pred0, y_pred1, y_pred2, re_data, im_data
    
    def receive_data(self):
        [y_pred_raw_0, y_pred_raw_1, y_pred_raw_2, complex_data] = self.ol.receive()
        [re_data, im_data] = self.complex2realimag(complex_data)
        y_pred_0 = self.softmax(y_pred_raw_0)
        y_pred_1 = self.softmax(y_pred_raw_1)
        y_pred_2 = self.softmax(y_pred_raw_2)
        return y_pred_0, y_pred_1, y_pred_2, re_data, im_data
    
    def confusion_matrix(self, y_pred_0, y_pred_1, y_pred_2, mod):
        mods = ['QPSK','BPSK','QAM16','QAM64','PSK8','PAM4','GFSK','CPFSK']
        conf_0 = np.zeros([len(self.classes), len(self.classes)])
        conf_1 = np.zeros([len(self.classes), len(self.classes)])
        conf_2 = np.zeros([len(self.classes), len(self.classes)])
        confnorm = np.zeros([len(self.classes), len(self.classes)])
        j = np.zeros([len(self.classes),1])
        j[self.classes.index(mod)] = 1
        j = list(j)
        k_0 = int(np.argmax(y_pred_0))
        k_1 = int(np.argmax(y_pred_1))
        k_2 = int(np.argmax(y_pred_2))
        conf_0[k_0,:] = j
        conf_1[k_1,:] = j
        conf_2[k_2,:] = j
        if not self._cm_0.data:
            self._cm_0.add_trace(go.Heatmap(z=conf_0,x=mods,y=mods, colorscale=['#ffffff', '#023047']))
        else:
            self._cm_0.data[0]['z'] = conf_0
        if not self._cm_1.data:
            self._cm_1.add_trace(go.Heatmap(z=conf_1, x=mods,y=mods, colorscale=['#ffffff', '#023047']))
        else:
            self._cm_1.data[0]['z'] = conf_1
        if not self._cm_2.data:
            self._cm_2.add_trace(go.Heatmap(z=conf_2, x=mods,y=mods, colorscale=['#ffffff', '#023047']))
        else:
            self._cm_2.data[0]['z'] = conf_2
    
    def complex2realimag(self, complex_data):
        re_data = np.int16(np.bitwise_and(complex_data,0xFFFF))
        im_data = np.int16(np.right_shift(complex_data,16) & 0xFFFF)
        return re_data, im_data
    
    def softmax(self, x):
        """Compute softmax values for each sets of scores in x."""
        e_x = np.exp(x - np.max(x))
        return e_x / e_x.sum()

    # Accuracy plots
def make_acc_plots(ol, dataset, load=False):
    mods = ['QPSK','BPSK','QAM16','QAM64','PSK8','PAM4','GFSK','CPFSK']
    snrs = ['-20','-16','-12','-8','-4','0','4','8','12','16','20','24', '28', '30']
    snrs_small = ['-16','-8','0','8','16','24','28','30']
    phase_offset = range(-179, 179, 10)
    title = 'Confusion Matrices Accuracies for AMC with CNN16w16a'
    title_1 = 'Confusion Matrices Accuracies for AMC with CNN8w16a'
    title_2 = 'Confusion Matrices Accuracies for AMC with CNN4w16a'
    accuracies = {}
    accuracies_1 = {}
    accuracies_2 = {}
    predictions={}
    predictions_1={}
    predictions_2={}
    figs = {}
    figs_1 = {}
    figs_2 = {}
    if not load:
        # Loop over SNRs
        for snr in snrs:
            for mod in mods:
                predictions_mod = []
                predictions_mod_1 = []
                predictions_mod_2 = []
                data_mod = dataset[mod,snr]
                for i in range(80):
                    data = data_mod[:,:,i]
                    y = np.int16(data*np.int16(pow(2,13)))
                    z = np.zeros(2*4096, dtype=np.int16)
                    z[0::2] = y[0,:]
                    z[1::2] = y[1,:]
                    ol.send(z)
                    for a in range(32):
                        [y_pred, y_pred_1, y_pred_2, re_data, im_data] = ol.receive_data()
                        predictions_mod.append(y_pred)
                        predictions_mod_1.append(y_pred_1)
                        predictions_mod_2.append(y_pred_2)
                predictions[mod] = predictions_mod
                predictions_1[mod] = predictions_mod_1
                predictions_2[mod] = predictions_mod_2
            # 16w16a ---------------------------------------------
            conf = np.zeros([len(mods), len(mods)])
            confnorm = conf
            for mod in mods:
                j = mods.index(mod)
                preds = predictions[mod]
                for i in range(len(preds)):
                    k = preds[i]
                    conf[j,k] += 1
            for i in range(len(mods)):
                confnorm[i,:] = conf[i,:] / np.sum(conf[i,:])
            confnorm_str = confnorm
            cm_text = [['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','','']]
            cm_diag = np.round(np.diag(confnorm_str*100.0),1)
            accuracies[snr] = cm_diag
            for i in range(8):
                for j in range(8):
                    if i == j:
                        cm_text[i][j] = str(cm_diag[j])
            fig = go.Heatmap(z=confnorm*100.0,
                             x=mods,
                             y=mods,
                             colorscale=['#ffffff','#023047'],
                             text=cm_text,
                             texttemplate='%{text}',
                             )
            figs[snr] = fig
            # 8w16a --------------------------------------------------
            conf = np.zeros([len(mods), len(mods)])
            confnorm = conf
            for mod in mods:
                j = mods.index(mod)
                preds = predictions_1[mod]
                for i in range(len(preds)):
                    k = preds[i]
                    conf[j,k] += 1
            for i in range(len(mods)):
                confnorm[i,:] = conf[i,:] / np.sum(conf[i,:])
            confnorm_str = confnorm
            cm_text = [['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','','']]
            cm_diag = np.round(np.diag(confnorm_str*100.0),1)
            accuracies_1[snr] = cm_diag
            for i in range(8):
                for j in range(8):
                    if i == j:
                        cm_text[i][j] = str(cm_diag[j])
            fig = go.Heatmap(z=confnorm*100.0,
                             x=mods,
                             y=mods,
                             colorscale=['#ffffff','#023047'],
                             text=cm_text,
                             texttemplate='%{text}',
                             )
            figs_1[snr] = fig
            # 4w16a ---------------------------------------------------
            conf = np.zeros([len(mods), len(mods)])
            confnorm = conf
            for mod in mods:
                j = mods.index(mod)
                preds = predictions_2[mod]
                for i in range(len(preds)):
                    k = preds[i]
                    conf[j,k] += 1
            for i in range(len(mods)):
                confnorm[i,:] = conf[i,:] / np.sum(conf[i,:])
            confnorm_str = confnorm
            cm_text = [['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','',''],
                       ['','','','','','','','']]
            cm_diag = np.round(np.diag(confnorm_str*100.0),1)
            accuracies_2[snr] = cm_diag
            for i in range(8):
                for j in range(8):
                    if i == j:
                        cm_text[i][j] = str(cm_diag[j])
            fig = go.Heatmap(z=confnorm*100.0,
                             x=mods,
                             y=mods,
                             colorscale=['#ffffff','#023047'],
                             text=cm_text,
                             texttemplate='%{text}',
                             )
            figs_2[snr] = fig
        # 16w16a ------------------------------------------------------------
        sub = make_subplots(rows=1, cols=8,
                           subplot_titles=list(map(lambda x: f'SNR: {x}dB',snrs_small)))
        i=1
        j=1
        for snr in snrs_small:
            sub.add_trace(figs[snr],row=1,col=i)
            i += 1
        sub.update_layout(width=2200, 
                          height=375, 
                          title_text=title,
                          font=dict(family='Latin Modern Math'),
                          showlegend=False)
        sub.update_traces(showscale=False)
        # 8w16a --------------------------------------------------------------
        sub_1 = make_subplots(rows=1, cols=8,
                       subplot_titles=list(map(lambda x: f'SNR: {x}dB',snrs_small)))
        i=1
        j=1
        for snr in snrs_small:
            sub_1.add_trace(figs_1[snr],row=1,col=i)
            i += 1
        sub_1.update_layout(width=2200, 
                          height=375, 
                          title_text=title_1,
                          font=dict(family='Latin Modern Math'),
                          showlegend=False)
        sub_1.update_traces(showscale=False)
        # 4w16a --------------------------------------------------------------
        sub_2 = make_subplots(rows=1, cols=8,
                        subplot_titles=list(map(lambda x: f'SNR: {x}dB',snrs_small)))
        i=1
        j=1
        for snr in snrs_small:
            sub_2.add_trace(figs_2[snr],row=1,col=i)
            i += 1
        sub_2.update_layout(width=2200, 
                          height=375, 
                          title_text=title_2,
                          font=dict(family='Latin Modern Math'),
                          showlegend=False)
        sub_2.update_traces(showscale=False)

        with open('plot16w16a.pkl','wb') as f:
            pickle.dump(sub,f,protocol=pickle.HIGHEST_PROTOCOL)

        with open('plot8w16a.pkl','wb') as f:
            pickle.dump(sub_1,f,protocol=pickle.HIGHEST_PROTOCOL)

        with open('plot4w16a.pkl','wb') as f:
            pickle.dump(sub_2,f,protocol=pickle.HIGHEST_PROTOCOL)
            
        with open('acc16w16a.pkl','wb') as f:
            pickle.dump(accuracies,f,protocol=pickle.HIGHEST_PROTOCOL)

        with open('acc8w16a.pkl','wb') as f:
            pickle.dump(accuracies_1,f,protocol=pickle.HIGHEST_PROTOCOL)

        with open('acc4w16a.pkl','wb') as f:
            pickle.dump(accuracies_2,f,protocol=pickle.HIGHEST_PROTOCOL)
    else:
        with open('plot16w16a.pkl','rb') as f:
            sub = pickle.load(f)
        with open('plot8w16a.pkl','rb') as f:
            sub_1 = pickle.load(f)
        with open('plot4w16a.pkl','rb') as f:
            sub_2 = pickle.load(f)
        with open('plot16w16a.pkl','rb') as f:
            accuracies = pickle.load(f)
        with open('plot8w16a.pkl','rb') as f:
            accuracies_1 = pickle.load(f)
        with open('plot4w16a.pkl','rb') as f:
            accuracies_2 = pickle.load(f)

    return sub, sub_1, sub_2, accuracies, accuracies_1, accuracies_2