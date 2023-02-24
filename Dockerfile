ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER
LABEL author="Berk Olcay"
USER root
RUN pip install pandas numpy torch torchmetrics scikit-learn matplotlib monai pytorch-ignite Nibabel scikit-image Tensorboard gdown TorchVision lmdb einops transformers mlflow pynrrd 
Run pip install -U jupyter
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID