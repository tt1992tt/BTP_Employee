/********** GENERATED on 09/23/2023 at 01:29:19 by CB9980000017**************/
 @OData.entitySet.name: 'ZACDOCA_CDS' 
 @OData.entityType.name: 'ZACDOCA_CDSType' 
 define root abstract entity ZRAP_1234ZACDOCA_CDS { 
 key rbukrs : abap.char( 4 ) ; 
 key gjahr : abap.numc( 4 ) ; 
 @Odata.property.valueControl: 'bttype_vc' 
 bttype : abap.char( 4 ) ; 
 bttype_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rtcur_vc' 
 rtcur : abap.char( 5 ) ; 
 rtcur_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rwcur_vc' 
 rwcur : abap.char( 5 ) ; 
 rwcur_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rhcur_vc' 
 rhcur : abap.char( 5 ) ; 
 rhcur_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rkcur_vc' 
 rkcur : abap.char( 5 ) ; 
 rkcur_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rocur_vc' 
 rocur : abap.char( 5 ) ; 
 rocur_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rco_ocur_vc' 
 rco_ocur : abap.char( 5 ) ; 
 rco_ocur_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'runit_vc' 
 runit : abap.char( 3 ) ; 
 runit_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rcntr_vc' 
 rcntr : abap.char( 10 ) ; 
 rcntr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'prctr_vc' 
 prctr : abap.char( 10 ) ; 
 prctr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rfarea_vc' 
 rfarea : abap.char( 16 ) ; 
 rfarea_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'rbusa_vc' 
 rbusa : abap.char( 4 ) ; 
 rbusa_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'kokrs_vc' 
 kokrs : abap.char( 4 ) ; 
 kokrs_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'sfarea_vc' 
 sfarea : abap.char( 16 ) ; 
 sfarea_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'wsl_vc' 
 wsl : abap.dec( 24, 3 ) ; 
 wsl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'hsl_vc' 
 hsl : abap.dec( 24, 3 ) ; 
 hsl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ksl_vc' 
 ksl : abap.dec( 24, 3 ) ; 
 ksl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'msl_vc' 
 msl : abap.dec( 23, 3 ) ; 
 msl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'poper_vc' 
 poper : abap.numc( 3 ) ; 
 poper_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'periv_vc' 
 periv : abap.char( 2 ) ; 
 periv_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'fiscyearper_vc' 
 fiscyearper : abap.numc( 8 ) ; 
 fiscyearper_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'budat_vc' 
 budat : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 budat_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'bldat_vc' 
 bldat : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 bldat_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'blart_vc' 
 blart : abap.char( 2 ) ; 
 blart_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'timestamp_vc' 
 timestamp : tzntstmpl ; 
 timestamp_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ktopl_vc' 
 ktopl : abap.char( 4 ) ; 
 ktopl_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ebeln_vc' 
 ebeln : abap.char( 10 ) ; 
 ebeln_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ebelp_vc' 
 ebelp : abap.numc( 5 ) ; 
 ebelp_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'sgtxt_vc' 
 sgtxt : abap.char( 50 ) ; 
 sgtxt_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'kunnr_vc' 
 kunnr : abap.char( 10 ) ; 
 kunnr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'objnr_vc' 
 objnr : abap.char( 22 ) ; 
 objnr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'parob1_vc' 
 parob1 : abap.char( 22 ) ; 
 parob1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'co_belkz_vc' 
 co_belkz : abap.char( 1 ) ; 
 co_belkz_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'gkont_vc' 
 gkont : abap.char( 10 ) ; 
 gkont_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'pernr_vc' 
 pernr : abap.numc( 8 ) ; 
 pernr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'pbukrs_vc' 
 pbukrs : abap.char( 4 ) ; 
 pbukrs_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ps_posid_vc' 
 ps_posid : abap.char( 24 ) ; 
 ps_posid_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ps_pspid_vc' 
 ps_pspid : abap.char( 24 ) ; 
 ps_pspid_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'qmnum_vc' 
 qmnum : abap.char( 12 ) ; 
 qmnum_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'paccasty_vc' 
 paccasty : abap.char( 2 ) ; 
 paccasty_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'pkstrg_vc' 
 pkstrg : abap.char( 12 ) ; 
 pkstrg_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'co_zlenr_vc' 
 co_zlenr : abap.numc( 3 ) ; 
 co_zlenr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'co_belnr_vc' 
 co_belnr : abap.char( 10 ) ; 
 co_belnr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'co_buzei_vc' 
 co_buzei : abap.numc( 3 ) ; 
 co_buzei_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'vtweg_vc' 
 vtweg : abap.char( 2 ) ; 
 vtweg_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zzccomp_vc' 
 zzccomp : abap.char( 4 ) ; 
 zzccomp_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zzproduct_vc' 
 zzproduct : abap.char( 24 ) ; 
 zzproduct_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zzbuspro_vc' 
 zzbuspro : abap.char( 20 ) ; 
 zzbuspro_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zzcont_vc' 
 zzcont : abap.char( 10 ) ; 
 zzcont_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zzcwbs_vc' 
 zzcwbs : abap.char( 24 ) ; 
 zzcwbs_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zzrefwbs_vc' 
 zzrefwbs : abap.char( 12 ) ; 
 zzrefwbs_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'mig_source_vc' 
 mig_source : abap.char( 1 ) ; 
 mig_source_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'racct_vc' 
 racct : abap.char( 10 ) ; 
 racct_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zztltfuls_vc' 
 zztltfuls : abap.numc( 8 ) ; 
 zztltfuls_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'z_conrn_vc' 
 z_conrn : abap.char( 10 ) ; 
 z_conrn_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zecc_sg_vc' 
 zecc_sg : abap.char( 3 ) ; 
 zecc_sg_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'refbk_vc' 
 refbk : abap.char( 4 ) ; 
 refbk_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'zorgvg_vc' 
 zorgvg : abap.char( 4 ) ; 
 zorgvg_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
