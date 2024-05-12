from __future__ import print_function
from ipywidgets import interact, interactive, fixed, interact_manual
import ipywidgets as ipw
import random
import plotly.graph_objs as go
import plotly.subplots as sp
import numpy as np
from IPython.display import display
from amc_cnn_overlay import OverlayAMC
import pickle
from IPython.display import Javascript, display

align_kw = dict(
    _css = (('.widget-label', 'min-width', '20ex'),),
    margin = '0px 0px 5px 12px'
)

class AMCWidget():
    def __init__(self, data, classes, snrs, bitstream=None):
        np.random.seed(1234)
        self.data = data
        self.classes = classes
        self.snrs = snrs
        # Load Overlay
        self.ol = OverlayAMC(bitstream)
        # plotly widgets
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
        self.snr_slider = ipw.IntSlider(
            value = 24,
            min = -20,
            max = 24,
            step = 4,
            description = 'SNR (dB)',
            disabled=False,
            continuous_update=False,
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
        self.play = ipw.Play(min=1, interval=500, layout = {'margin':'0 0 0 50px'},)
        self.play.observe(self.play_press, 'value')
        self.button_box = ipw.Box([self.button], layout = ipw.widgets.Layout(justify_content='center'))
        self.button.on_click(self.press_button)
        self.rx_button.on_click(self.press_rx_button)
        self.update_mod = ipw.VBox([self.mod_choice, self.snr_slider,self.button], layout = ipw.widgets.Layout(justify_content='center',padding='100px 0 100px 0'))
        self.rx_phase = ipw.VBox([self.phase_slider, self.play])
        button_vert = ipw.VBox([self.update_mod, self.rx_phase], layout = ipw.widgets.Layout(width='350px'))
        self._plot_box = ipw.HBox(
            [button_vert, self._plotin, self._plotout],
            layout = ipw.widgets.Layout(justify_content='center')
        )
        # graph_vert = ipw.VBox([self._cm, self._bar], layout = ipw.widgets.Layout(justify_content='center'))
        graph_vert_0 = ipw.HBox([self._cm_0, self._cm_1, self._cm_2], layout = ipw.widgets.Layout(justify_content='center'))
        graph_vert_1 = ipw.HBox([self._bar_0, self._bar_1, self._bar_2], layout = ipw.widgets.Layout(justify_content='center'))
        vert_box = ipw.VBox([self._plot_box, graph_vert_0, graph_vert_1], layout=ipw.widgets.Layout(justify_content='center'))
        mod_panel = ipw.HBox([vert_box], layout=ipw.widgets.Layout(align_items='center',
                                                                                justify_content='center',
                                                                                border='solid',
                                                                                width='1800px'))
        return mod_panel
    
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
        snr = str(self.snr_slider.value)
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
        self.ol.clean()
        y = np.int16(sample_X*np.int16(pow(2,14)))
        z = np.zeros(2*4096, dtype=np.int16)
        z[0::2] = y[0,:]
        z[1::2] = y[1,:]
        self.ol.send(z)
        self.ol.cnn_0.write(0x100,1)
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
            self._cm_0.add_trace(go.Heatmap(z=conf_0, colorscale=['#ffffff', '#023047']))
        else:
            self._cm_0.data[0]['z'] = conf_0
        if not self._cm_1.data:
            self._cm_1.add_trace(go.Heatmap(z=conf_1, colorscale=['#ffffff', '#023047']))
        else:
            self._cm_1.data[0]['z'] = conf_1
        if not self._cm_2.data:
            self._cm_2.add_trace(go.Heatmap(z=conf_2, colorscale=['#ffffff', '#023047']))
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