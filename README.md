# Projeto IC - Classificação de Retinopatia Diabética

## Descrição
Este projeto desenvolve modelos de Machine Learning e Deep Learning para classificação binária de retinopatia diabética em imagens de retina.

## Objetivo
Detectar a presença de retinopatia diabética utilizando imagens de retina através de:
- Modelo simples (MLP - Multi-Layer Perceptron)
- Modelo avançado (CNN com Transfer Learning usando ResNet50)

## Hipótese
"A diferença de tons gerais - do mais claro ao mais escuro - e presença de diferentes tons, indica a presença da retinopatia."

## Dataset
- **Saudáveis (No DR)**: 525 imagens
- **Doentes**: 1461 imagens
  - Mild: 370
  - Moderate: 599
  - Proliferate: 290
  - Severe: 202

## Instalação

### 1. Clonar o repositório
```bash
git clone <seu-repositorio>
cd projeto-IC
```

### 2. Criar ambiente virtual (recomendado)
```bash
python3 -m venv venv
source venv/bin/activate  # No Windows: venv\Scripts\activate
```

### 3. Instalar dependências
```bash
pip install -r requirements.txt
```

### 4. Configurar credenciais do Kaggle
Para baixar o dataset, você precisa configurar suas credenciais do Kaggle:
1. Crie uma conta em [kaggle.com](https://www.kaggle.com)
2. Vá em Account → API → Create New Token
3. Salve o arquivo `kaggle.json` em `~/.kaggle/`

## Execução

### Jupyter Notebook
```bash
jupyter notebook projetoFinal/retinopatia_diabetica.ipynb
```

## Estrutura do Projeto
```
projeto-IC/
├── projetoFinal/
│   └── retinopatia_diabetica.ipynb  # Notebook principal
├── requirements.txt                  # Dependências
├── .gitignore                        # Arquivos ignorados pelo Git
└── README.md                         # Este arquivo
```

## Modelos Implementados

### MLP (Modelo Simples)
- Rede neural totalmente conectada
- Features extraídas: tons, intensidade, contraste
- Ideal para baseline

### CNN ResNet50 (Modelo Avançado)
- Transfer Learning com ResNet50 pré-treinada
- Fine-tuning das últimas camadas
- Data augmentation
- Melhor performance esperada

## Tecnologias Utilizadas
- **Python 3.14**
- **TensorFlow/Keras**: Deep Learning
- **Scikit-learn**: Machine Learning tradicional
- **OpenCV & Pillow**: Processamento de imagens
- **Matplotlib & Seaborn**: Visualização
- **Pandas & NumPy**: Manipulação de dados

## Resultados
Os resultados incluem:
- Matrizes de confusão
- Curvas ROC
- Validação cruzada
- Comparação de métricas (Acurácia, Precisão, Recall, F1-Score, AUC-ROC)

## Autor
João Victor Apa

## Licença
Este projeto é parte de uma Iniciação Científica.
