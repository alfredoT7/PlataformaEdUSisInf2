
/*==============================================================*/
/* Table: COMENTARIO                                            */
/*==============================================================*/
create table COMENTARIO (
   ID_COMENTARIO        SERIAL               not null,
   ID_COM_RESPUESTA     INT4                 null,
   COMENTARIO           VARCHAR(200)         null,
   constraint PK_COMENTARIO primary key (ID_COMENTARIO)
);

/*==============================================================*/
/* Index: COMENTARIO_PK                                         */
/*==============================================================*/
create unique index COMENTARIO_PK on COMENTARIO (
ID_COMENTARIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_33_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_33_FK on COMENTARIO (
ID_COM_RESPUESTA
);

/*==============================================================*/
/* Table: COMENTARIO_ENTREGA                                    */
/*==============================================================*/
create table COMENTARIO_ENTREGA (
   ID_ENTREGA           INT4                 not null,
   ID_COMENTARIO        INT4                 not null,
   constraint PK_COMENTARIO_ENTREGA primary key (ID_ENTREGA, ID_COMENTARIO)
);

/*==============================================================*/
/* Index: COMENTARIO_ENTREGA_PK                                 */
/*==============================================================*/
create unique index COMENTARIO_ENTREGA_PK on COMENTARIO_ENTREGA (
ID_ENTREGA,
ID_COMENTARIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on COMENTARIO_ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on COMENTARIO_ENTREGA (
ID_COMENTARIO
);

/*==============================================================*/
/* Table: DOCENTE                                               */
/*==============================================================*/
create table DOCENTE (
   ID_DOCENTE           INT4                 not null,
   DOCENTE_DESDE        DATE                 not null,
   constraint PK_DOCENTE primary key (ID_DOCENTE)
);

/*==============================================================*/
/* Index: DOCENTE_PK                                            */
/*==============================================================*/
create unique index DOCENTE_PK on DOCENTE (
ID_DOCENTE
);

/*==============================================================*/
/* Table: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA (
   ID_ENTREGA           SERIAL               not null,
   ID_TIPO_ARCHIVO      INT4                 null,
   RETRASO_ENTREGA      BOOL                 not null,
   CALIFICACION         INT4                 null,
   constraint PK_ENTREGA primary key (ID_ENTREGA)
);

/*==============================================================*/
/* Index: ENTREGA_PK                                            */
/*==============================================================*/
create unique index ENTREGA_PK on ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on ENTREGA (
ID_TIPO_ARCHIVO
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   ID_ESTUDIANTE        INT4                 not null,
   ESTADO_MATRICULA     BOOL                 not null,
   CORREO_ESTIDIANTIL   VARCHAR(30)          not null,
   constraint PK_ESTUDIANTE primary key (ID_ESTUDIANTE)
);

/*==============================================================*/
/* Index: ESTUDIANTE_PK                                         */
/*==============================================================*/
create unique index ESTUDIANTE_PK on ESTUDIANTE (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Table: ESTUDIANTE_ENTREGA                                    */
/*==============================================================*/
create table ESTUDIANTE_ENTREGA (
   ID_ESTUDIANTE        INT4                 not null,
   ID_ENTREGA           INT4                 not null,
   constraint PK_ESTUDIANTE_ENTREGA primary key (ID_ESTUDIANTE, ID_ENTREGA)
);

/*==============================================================*/
/* Index: ESTUDIANTE_ENTREGA_PK                                 */
/*==============================================================*/
create unique index ESTUDIANTE_ENTREGA_PK on ESTUDIANTE_ENTREGA (
ID_ESTUDIANTE,
ID_ENTREGA
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_29_FK on ESTUDIANTE_ENTREGA (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_30_FK on ESTUDIANTE_ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Table: GRADO_ACADEMICO                                       */
/*==============================================================*/
create table GRADO_ACADEMICO (
   ID_GRADO_ACAD        SERIAL               not null,
   GRADO_ACAD           VARCHAR(30)          not null,
   constraint PK_GRADO_ACADEMICO primary key (ID_GRADO_ACAD)
);

/*==============================================================*/
/* Index: GRADO_ACADEMICO_PK                                    */
/*==============================================================*/
create unique index GRADO_ACADEMICO_PK on GRADO_ACADEMICO (
ID_GRADO_ACAD
);

/*==============================================================*/
/* Table: INSCRIPCION                                           */
/*==============================================================*/
create table INSCRIPCION (
   ID_MATERIA           INT4                 not null,
   ID_DOCENTE           INT4                 not null,
   ID_ESTUDIANTE        INT4                 not null,
   PERIODO_ACADEMICO    VARCHAR(8)           not null,
   constraint PK_INSCRIPCION primary key (ID_MATERIA, ID_DOCENTE, ID_ESTUDIANTE, PERIODO_ACADEMICO)
);

/*==============================================================*/
/* Index: INSCRIPCION_PK                                        */
/*==============================================================*/
create unique index INSCRIPCION_PK on INSCRIPCION (
ID_MATERIA,
ID_DOCENTE,
ID_ESTUDIANTE,
PERIODO_ACADEMICO
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on INSCRIPCION (
ID_MATERIA,
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on INSCRIPCION (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Table: LICENCIATURA                                          */
/*==============================================================*/
create table LICENCIATURA (
   ID_GRADO_ACAD        INT4                 not null,
   ID_LICENCIATURA      SERIAL               not null,
   ID_DOCENTE           INT4                 not null,
   NOM_LICENCIATURA     VARCHAR(30)          not null,
   constraint PK_LICENCIATURA primary key (ID_GRADO_ACAD, ID_LICENCIATURA, ID_DOCENTE)
);

/*==============================================================*/
/* Index: LICENCIATURA_PK                                       */
/*==============================================================*/
create unique index LICENCIATURA_PK on LICENCIATURA (
ID_GRADO_ACAD,
ID_LICENCIATURA,
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on LICENCIATURA (
ID_GRADO_ACAD
);

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_31_FK on LICENCIATURA (
ID_DOCENTE
);

/*==============================================================*/
/* Table: MATERIA                                               */
/*==============================================================*/
create table MATERIA (
   ID_MATERIA           SERIAL               not null,
   ID_DOCENTE           INT4                 not null,
   NOMBRE_MATERIA       VARCHAR(30)          not null,
   DESCRIPCION2         VARCHAR(30)          not null,
   constraint PK_MATERIA primary key (ID_MATERIA, ID_DOCENTE)
);

/*==============================================================*/
/* Index: MATERIA_PK                                            */
/*==============================================================*/
create unique index MATERIA_PK on MATERIA (
ID_MATERIA,
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_32_FK on MATERIA (
ID_DOCENTE
);

/*==============================================================*/
/* Table: MATERIAL_EDUCATIVO                                    */
/*==============================================================*/
create table MATERIAL_EDUCATIVO (
   ID_MATERIAL          SERIAL               not null,
   ID_TIPO_ARCHIVO      INT4                 null,
   ARCHIVO              VARCHAR(200)         not null,
   DESCIPCION_MATERIAL  VARCHAR(200)         null,
   constraint PK_MATERIAL_EDUCATIVO primary key (ID_MATERIAL)
);

/*==============================================================*/
/* Index: MATERIAL_EDUCATIVO_PK                                 */
/*==============================================================*/
create unique index MATERIAL_EDUCATIVO_PK on MATERIAL_EDUCATIVO (
ID_MATERIAL
);

/*==============================================================*/
/* Index: RELATIONSHIP_36_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_36_FK on MATERIAL_EDUCATIVO (
ID_TIPO_ARCHIVO
);

/*==============================================================*/
/* Table: MATERIAL_EDU_MATERIA                                  */
/*==============================================================*/
create table MATERIAL_EDU_MATERIA (
   ID_MATERIAL          INT4                 not null,
   ID_MATERIA           INT4                 not null,
   ID_DOCENTE           INT4                 not null,
   constraint PK_MATERIAL_EDU_MATERIA primary key (ID_MATERIAL, ID_MATERIA, ID_DOCENTE)
);

/*==============================================================*/
/* Index: MATERIAL_EDU_MATERIA_PK                               */
/*==============================================================*/
create unique index MATERIAL_EDU_MATERIA_PK on MATERIAL_EDU_MATERIA (
ID_MATERIAL,
ID_MATERIA,
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_34_FK on MATERIAL_EDU_MATERIA (
ID_MATERIA,
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_35_FK on MATERIAL_EDU_MATERIA (
ID_MATERIAL
);

/*==============================================================*/
/* Table: MATERIA_TAREA                                         */
/*==============================================================*/
create table MATERIA_TAREA (
   ID_MATERIA           INT4                 not null,
   ID_DOCENTE           INT4                 not null,
   ID_TAREA             INT4                 not null,
   PERIODO_ACAD         VARCHAR(8)           not null,
   constraint PK_MATERIA_TAREA primary key (ID_MATERIA, ID_DOCENTE, ID_TAREA, PERIODO_ACAD)
);

/*==============================================================*/
/* Index: MATERIA_TAREA_PK                                      */
/*==============================================================*/
create unique index MATERIA_TAREA_PK on MATERIA_TAREA (
ID_MATERIA,
ID_DOCENTE,
ID_TAREA,
PERIODO_ACAD
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_27_FK on MATERIA_TAREA (
ID_MATERIA,
ID_DOCENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_28_FK on MATERIA_TAREA (
ID_TAREA
);

/*==============================================================*/
/* Table: NOTIFICACIONES                                        */
/*==============================================================*/
create table NOTIFICACIONES (
   ID_TAREA             INT4                 not null,
   ID_ESTUDIANTE        INT4                 not null,
   CONTENIDO_NOT        VARCHAR(200)         not null,
   constraint PK_NOTIFICACIONES primary key (ID_TAREA, ID_ESTUDIANTE)
);

/*==============================================================*/
/* Index: NOTIFICACIONES_PK                                     */
/*==============================================================*/
create unique index NOTIFICACIONES_PK on NOTIFICACIONES (
ID_TAREA,
ID_ESTUDIANTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on NOTIFICACIONES (
ID_TAREA
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on NOTIFICACIONES (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Table: TAREA                                                 */
/*==============================================================*/
create table TAREA (
   ID_TAREA             SERIAL               not null,
   NOMBRE_TAREA         VARCHAR(30)          not null,
   FECHA_ASIGNACION     DATE                 null,
   FECHA_ENTREGA        DATE                 null,
   DESCRIPCION_TAREA    VARCHAR(200)         null,
   constraint PK_TAREA primary key (ID_TAREA)
);

/*==============================================================*/
/* Index: TAREA_PK                                              */
/*==============================================================*/
create unique index TAREA_PK on TAREA (
ID_TAREA
);

/*==============================================================*/
/* Table: TAREA_ENTREGA                                         */
/*==============================================================*/
create table TAREA_ENTREGA (
   ID_TAREA             INT4                 not null,
   ID_ENTREGA           INT4                 not null,
   FECHA_TAREA_ENTREGADA DATE                 not null,
   constraint PK_TAREA_ENTREGA primary key (ID_TAREA, ID_ENTREGA, FECHA_TAREA_ENTREGADA)
);

/*==============================================================*/
/* Index: TAREA_ENTREGA_PK                                      */
/*==============================================================*/
create unique index TAREA_ENTREGA_PK on TAREA_ENTREGA (
ID_TAREA,
ID_ENTREGA,
FECHA_TAREA_ENTREGADA
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_25_FK on TAREA_ENTREGA (
ID_TAREA
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_26_FK on TAREA_ENTREGA (
ID_ENTREGA
);

/*==============================================================*/
/* Table: TIPO_ARCHIVO                                          */
/*==============================================================*/
create table TIPO_ARCHIVO (
   ID_TIPO_ARCHIVO      SERIAL               not null,
   TIPO_ARCHIVO         VARCHAR(10)          not null,
   constraint PK_TIPO_ARCHIVO primary key (ID_TIPO_ARCHIVO)
);

/*==============================================================*/
/* Index: TIPO_ARCHIVO_PK                                       */
/*==============================================================*/
create unique index TIPO_ARCHIVO_PK on TIPO_ARCHIVO (
ID_TIPO_ARCHIVO
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USERN             SERIAL               not null,
   NOMBRE               VARCHAR(30)          not null,
   CONTRASENIA          VARCHAR(30)          not null,
   FECHA_NAC            DATE                 not null,
   constraint PK_USUARIO primary key (ID_USERN)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
ID_USERN
);

alter table COMENTARIO
   add constraint FK_COMENTAR_RELATIONS_COMENTAR foreign key (ID_COM_RESPUESTA)
      references COMENTARIO (ID_COMENTARIO)
      on delete restrict on update restrict;

alter table COMENTARIO_ENTREGA
   add constraint FK_COMENTAR_RELATIONS_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
      on delete restrict on update restrict;

alter table COMENTARIO_ENTREGA
   add constraint FK_COMENTAR_RELATIONS_COMENTAR foreign key (ID_COMENTARIO)
      references COMENTARIO (ID_COMENTARIO)
      on delete restrict on update restrict;

alter table DOCENTE
   add constraint FK_DOCENTE_RELATIONS_USUARIO foreign key (ID_DOCENTE)
      references USUARIO (ID_USERN)
      on delete restrict on update restrict;

alter table ENTREGA
   add constraint FK_ENTREGA_RELATIONS_TIPO_ARC foreign key (ID_TIPO_ARCHIVO)
      references TIPO_ARCHIVO (ID_TIPO_ARCHIVO)
      on delete restrict on update restrict;

alter table ESTUDIANTE
   add constraint FK_ESTUDIAN_RELATIONS_USUARIO foreign key (ID_ESTUDIANTE)
      references USUARIO (ID_USERN)
      on delete restrict on update restrict;

alter table ESTUDIANTE_ENTREGA
   add constraint FK_ESTUDIAN_RELATIONS_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table ESTUDIANTE_ENTREGA
   add constraint FK_ESTUDIAN_RELATIONS_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_RELATIONS_MATERIA foreign key (ID_MATERIA, ID_DOCENTE)
      references MATERIA (ID_MATERIA, ID_DOCENTE)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_RELATIONS_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table LICENCIATURA
   add constraint FK_LICENCIA_RELATIONS_GRADO_AC foreign key (ID_GRADO_ACAD)
      references GRADO_ACADEMICO (ID_GRADO_ACAD)
      on delete restrict on update restrict;

alter table LICENCIATURA
   add constraint FK_LICENCIA_RELATIONS_DOCENTE foreign key (ID_DOCENTE)
      references DOCENTE (ID_DOCENTE)
      on delete restrict on update restrict;

alter table MATERIA
   add constraint FK_MATERIA_RELATIONS_DOCENTE foreign key (ID_DOCENTE)
      references DOCENTE (ID_DOCENTE)
      on delete restrict on update restrict;

alter table MATERIAL_EDUCATIVO
   add constraint FK_MATERIAL_RELATIONS_TIPO_ARC foreign key (ID_TIPO_ARCHIVO)
      references TIPO_ARCHIVO (ID_TIPO_ARCHIVO)
      on delete restrict on update restrict;

alter table MATERIAL_EDU_MATERIA
   add constraint FK_MATERIAL_RELATIONS_MATERIA foreign key (ID_MATERIA, ID_DOCENTE)
      references MATERIA (ID_MATERIA, ID_DOCENTE)
      on delete restrict on update restrict;

alter table MATERIAL_EDU_MATERIA
   add constraint FK_MATERIAL_RELATIONS_MATERIAL foreign key (ID_MATERIAL)
      references MATERIAL_EDUCATIVO (ID_MATERIAL)
      on delete restrict on update restrict;

alter table MATERIA_TAREA
   add constraint FK_MATERIA__RELATIONS_MATERIA foreign key (ID_MATERIA, ID_DOCENTE)
      references MATERIA (ID_MATERIA, ID_DOCENTE)
      on delete restrict on update restrict;

alter table MATERIA_TAREA
   add constraint FK_MATERIA__RELATIONS_TAREA foreign key (ID_TAREA)
      references TAREA (ID_TAREA)
      on delete restrict on update restrict;

alter table NOTIFICACIONES
   add constraint FK_NOTIFICA_RELATIONS_TAREA foreign key (ID_TAREA)
      references TAREA (ID_TAREA)
      on delete restrict on update restrict;

alter table NOTIFICACIONES
   add constraint FK_NOTIFICA_RELATIONS_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table TAREA_ENTREGA
   add constraint FK_TAREA_EN_RELATIONS_TAREA foreign key (ID_TAREA)
      references TAREA (ID_TAREA)
      on delete restrict on update restrict;

alter table TAREA_ENTREGA
   add constraint FK_TAREA_EN_RELATIONS_ENTREGA foreign key (ID_ENTREGA)
      references ENTREGA (ID_ENTREGA)
      on delete restrict on update restrict;

