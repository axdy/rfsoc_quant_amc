import pickle
import numpy as np
import plotly.graph_objects as go

def load_dataset(filename):
    with open(filename, 'rb') as f:
        dataset = pickle.load(f)
        print("Data set loaded!")
    return dataset

def plot_dataset(data_mod):
    fig = go.Figure([go.Scatter(y=data_mod[0,:],name='real'), go.Scatter(y=data_mod[1,:],name='imag')])
    fig.update_layout(
        title='Transmission Signal',
        xaxis=dict(title='samples'),
        yaxis=dict(title='amplitude'),
        font=dict(family='Arial', size=16, color='black'),
        # paper_bgcolor='rgba(0,0,0,0)',
        template='plotly_white',
    )
    return fig

def plot_received(re,im):
    fig = go.Figure([go.Scatter(y=re,name='real'), go.Scatter(y=im,name='imag')])
    fig.update_layout(
        title='Received Signal',
        xaxis=dict(title='samples'),
        yaxis=dict(title='amplitude'),
        font=dict(family='Arial', size=16, color='black'),
        # paper_bgcolor='rgba(0,0,0,0)',
        template='plotly_white',
    )
    return fig

def load_results():
    # Load plots
    with open('results/plot16w16a.pkl','rb') as f:
        plot_16w = pickle.load(f)
    with open('results/plot8w16a.pkl','rb') as f:
        plot_8w = pickle.load(f)
    with open('results/plot4w16a.pkl','rb') as f:
        plot_4w = pickle.load(f)
        
    # Load accuracies
    with open('results/16w16a_accuracies_dict.pkl','rb') as f:
        acc_16w = pickle.load(f)
    
    with open('results/8w16a_accuracies_dict.pkl','rb') as f:
        acc_8w = pickle.load(f)

    with open('results/4w16a_accuracies_dict.pkl','rb') as f:
        acc_4w = pickle.load(f)
        
    plot_16w.update_layout(width=1800,height=307)
    plot_8w.update_layout(width=1800,height=307)
    plot_4w.update_layout(width=1800,height=307)
        
    return plot_16w, plot_8w, plot_4w, acc_16w, acc_8w, acc_4w

def plot_accuracies(acc_16w, acc_8w, acc_4w):
    snrs = ['-20','-16','-12','-8','-4','0','4','8','12','16','20','24','28','30']
    plot_16w_16a_accuracies = acc_16w
    plot_8w_16a_accuracies = acc_8w
    plot_4w_16a_accuracies = acc_4w
    snrs_16w16a = []
    snrs_8w16a = []
    snrs_4w16a = []
    for snr in snrs:
        snrs_16w16a.append(np.average(plot_16w_16a_accuracies[snr]))
        snrs_8w16a.append(np.average(plot_8w_16a_accuracies[snr]))
        snrs_4w16a.append(np.average(plot_4w_16a_accuracies[snr]))
    import plotly.graph_objects as go
    fig = go.Figure([go.Scatter(x=list(map(int,snrs)),y=snrs_16w16a,name='16w16a',mode='lines+markers', marker=dict(symbol='circle-open', size=8, color='#8ecddd')),
                     go.Scatter(x=list(map(int,snrs)),y=snrs_8w16a,name='8w16a',mode='lines+markers', marker=dict(symbol='square-open', size=8, color='#ed6a5e')),
                     go.Scatter(x=list(map(int,snrs)),y=snrs_4w16a,name='4w16a',mode='lines+markers', marker=dict(symbol='triangle-up-open', size=8, color='#ffcc70'))])

    fig.update_layout(
        title='Accuracy vs SNR for each quantised model',
        xaxis=dict(title='SNR (dB)'),
        yaxis=dict(title='Accuracy (%)',range=[0, 100]),
        legend_title='Quantised model',
        font=dict(family='Arial', size=16, color='black'),
        margin=dict(l=50, r=50, t=50, b=50),
        # paper_bgcolor='rgba(0,0,0,0)',
        template='plotly_white',
        height=600,
        width=800,
    )
    return fig