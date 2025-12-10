#!/bin/bash

# Script de instalação para o projeto de Retinopatia Diabética
# Compatível com Python 3.14 em Apple Silicon (M1/M2/M3)

echo "🚀 Iniciando instalação do ambiente..."

# Verificar se o ambiente virtual existe
if [ ! -d "venv" ]; then
    echo "📦 Criando ambiente virtual..."
    python3 -m venv venv
fi

echo "✅ Ativando ambiente virtual..."
source venv/bin/activate

echo "⬆️  Atualizando pip..."
pip install --upgrade pip

echo "📥 Instalando dependências base..."
# Instalar dependências que funcionam com Python 3.14
pip install kagglehub
pip install scikit-learn
pip install opencv-python
pip install Pillow
pip install matplotlib
pip install seaborn
pip install pandas
pip install tqdm
pip install jupyter
pip install ipykernel

# Para Python 3.14, usamos versões compatíveis
echo "🔧 Instalando NumPy (compatível)..."
pip install "numpy<2.0"

echo "🤖 Instalando TensorFlow..."
# Tentar instalar tf-nightly para Apple Silicon
pip install tf-nightly || pip install tensorflow-macos tensorflow-metal

echo "✨ Registrando kernel do Jupyter..."
python -m ipykernel install --user --name=projeto-ic --display-name="Python (Projeto IC)"

echo ""
echo "✅ Instalação concluída!"
echo ""
echo "Para ativar o ambiente virtual, execute:"
echo "  source venv/bin/activate"
echo ""
echo "Para executar o notebook:"
echo "  jupyter notebook projetoFinal/retinopatia_diabetica.ipynb"
