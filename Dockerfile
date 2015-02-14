# Galaxy - RNA workbench
#
# VERSION       0.1

FROM bgruening/galaxy-stable:dev

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND RNA workbench

WORKDIR /galaxy-central

RUN install-repository "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name rnabob --panel-section-name RNATools" \
    '--url https://toolshed.g2.bx.psu.edu/ -o iuc --name package_perl_pdf_api2_2_023' \
    "--url https://toolshed.g2.bx.psu.edu/ -o bgruening --name trna_prediction --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name blockclust --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name blockclust_workflow" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name cofold --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o bgruening --name infernal --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o lionelguy --name rnammer --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o bgruening --name rnaz --panel-section-name RNATools"

RUN install-repository "--url https://toolshed.g2.bx.psu.edu/ -o iuc --name package_vienna_rna_1_8" \
    "--url https://toolshed.g2.bx.psu.edu/ -o devteam --name package_bowtie_0_12_7" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name vienna_rna --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o iuc --name package_squid_1_9g " \
    "--url https://toolshed.g2.bx.psu.edu/ -o iuc --name package_randfold_2_0 " \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name mirdeep2_mapper --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name mirdeep2_quantifier --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name mirdeep2 --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name rnashapes --panel-section-name RNATools" \
    "--url https://toolshed.g2.bx.psu.edu/ -o rnateam --name suite_mirdeep_2_0"

RUN curl -sL https://github.com/bgruening/galaxytools/archive/master.tar.gz | tar xz && cp -r galaxytools-master/visualisations/* config/plugins/visualizations/ && rm -rf ./galaxytools-master
