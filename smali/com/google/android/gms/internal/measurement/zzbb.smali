###### Class com.google.android.gms.internal.measurement.zzbb (com.google.android.gms.internal.measurement.zzbb)
.class public final Lcom/google/android/gms/internal/measurement/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# direct methods
.method public static a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "indexOf"

    const-string v6, "reverse"

    const-string v7, "slice"

    const-string v8, "shift"

    const-string v9, "every"

    const-string v10, "sort"

    const-string v11, "some"

    const-string v12, "join"

    const-string v13, "pop"

    const-string v14, "map"

    const-string v15, "lastIndexOf"

    const-string v3, "forEach"

    const-string v1, "filter"

    const-string v2, "toString"

    const/16 v16, -0x1

    move-object/from16 v17, v2

    sparse-switch v4, :sswitch_data_794

    :cond_2f
    move-object/from16 v4, v17

    goto/16 :goto_fb

    :sswitch_33
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x4

    goto/16 :goto_d7

    :sswitch_3c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc

    goto/16 :goto_d7

    :sswitch_46
    const-string v4, "reduceRight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xb

    goto/16 :goto_d7

    :sswitch_52
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xe

    goto/16 :goto_d7

    :sswitch_5c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xd

    goto/16 :goto_d7

    :sswitch_66
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object/from16 v4, v17

    const/4 v0, 0x1

    goto/16 :goto_fc

    :sswitch_71
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x10

    goto :goto_d7

    :sswitch_7a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xf

    goto :goto_d7

    :sswitch_83
    const-string v4, "push"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x9

    goto :goto_d7

    :sswitch_8e
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x5

    goto :goto_d7

    :sswitch_96
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x8

    goto :goto_d7

    :sswitch_9f
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x7

    goto :goto_d7

    :sswitch_a7
    const-string v4, "unshift"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x13

    goto :goto_d7

    :sswitch_b2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x6

    goto :goto_d7

    :sswitch_ba
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x3

    goto :goto_d7

    :sswitch_c2
    const-string v4, "splice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x11

    goto :goto_d7

    :sswitch_cd
    const-string v4, "reduce"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xa

    :goto_d7
    move-object/from16 v4, v17

    goto :goto_fc

    :sswitch_da
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object/from16 v4, v17

    const/4 v0, 0x2

    goto :goto_fc

    :sswitch_e4
    const-string v4, "concat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object/from16 v4, v17

    const/4 v0, 0x0

    goto :goto_fc

    :sswitch_f0
    move-object/from16 v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const/16 v0, 0x12

    goto :goto_fc

    :cond_fb
    :goto_fb
    const/4 v0, -0x1

    :goto_fc
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const-string v2, "Callback should be a method"

    move-object/from16 v20, v1

    move-object/from16 p0, v2

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_7e6

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_111
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_192

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_120
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_146

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    move-object/from16 v3, p2

    .line 7
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 8
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_13e

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_120

    .line 10
    :cond_13e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_146
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v2

    :goto_14e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v9, p1

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_14e

    :cond_16d
    move-object/from16 v9, p1

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->q()V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v1

    :goto_176
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_194

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_176

    :cond_192
    move-object/from16 v9, p1

    :cond_194
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_1a3
    move-object/from16 v9, p1

    move-object/from16 v0, p3

    move-object v1, v4

    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    const-string v1, ","

    .line 22
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1b8
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v2, 0x0

    .line 24
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1cc

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 25
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    goto/16 :goto_284

    .line 26
    :cond_1cc
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->a(D)D

    move-result-wide v4

    double-to-int v1, v4

    if-gez v1, :cond_1ef

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1f9

    .line 28
    :cond_1ef
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v2

    if-le v1, v2, :cond_1f9

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    .line 30
    :cond_1f9
    :goto_1f9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v2

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzae;

    .line 31
    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 32
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_26f

    .line 33
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->a(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v5, :cond_241

    move v6, v1

    :goto_228
    add-int v7, v1, v5

    .line 34
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v6, v7, :cond_241

    .line 35
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v7

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    .line 37
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->s(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_228

    .line 38
    :cond_241
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_283

    const/4 v2, 0x2

    .line 39
    :goto_249
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_283

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    .line 41
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v6, :cond_267

    add-int v6, v1, v2

    add-int/lit8 v6, v6, -0x2

    .line 42
    invoke-virtual {v9, v6, v5}, Lcom/google/android/gms/internal/measurement/zzae;->r(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_249

    .line 43
    :cond_267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26f
    :goto_26f
    if-ge v1, v2, :cond_283

    .line 45
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v3

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {v9, v1, v0}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26f

    :cond_283
    move-object v0, v4

    :goto_284
    return-object v0

    :pswitch_285
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v1, 0x1

    .line 48
    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->j(Ljava/lang/String;ILjava/util/List;)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_297

    goto :goto_2df

    .line 50
    :cond_297
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->p()Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2bb

    const/4 v2, 0x0

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 53
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v2, :cond_2b3

    .line 54
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzai;

    goto :goto_2bc

    .line 55
    :cond_2b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2bb
    const/4 v0, 0x0

    .line 57
    :goto_2bc
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzba;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzba;-><init>(Lcom/google/android/gms/internal/measurement/zzai;Lcom/google/android/gms/internal/measurement/zzg;)V

    .line 58
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->q()V

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2df

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    .line 61
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    move v2, v1

    goto :goto_2cc

    :cond_2df
    :goto_2df
    return-object v9

    :pswitch_2e0
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v1, 0x1

    .line 62
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v1, :cond_350

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    if-nez v1, :cond_302

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->j:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_34f

    .line 66
    :cond_302
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzai;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v1

    :cond_308
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34d

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->u(I)Z

    move-result v4

    if-eqz v4, :cond_308

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzap;

    .line 70
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzah;

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v2, 0x1

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v9, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzai;->a(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 71
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzap;->e()Ljava/lang/Boolean;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_308

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->i:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_34f

    :cond_34d
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->j:Lcom/google/android/gms/internal/measurement/zzap;

    :goto_34f
    return-object v0

    .line 73
    :cond_350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, p0

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_358
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v4, 0x2

    .line 75
    invoke-static {v7, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->j(Ljava/lang/String;ILjava/util/List;)V

    .line 76
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_36e

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->d()Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    goto/16 :goto_3e3

    .line 78
    :cond_36e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v4

    int-to-double v4, v4

    const/4 v6, 0x0

    .line 79
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzh;->a(D)D

    move-result-wide v6

    cmpg-double v8, v6, v1

    if-gez v8, :cond_397

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    .line 80
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_39b

    .line 81
    :cond_397
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 82
    :goto_39b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3ca

    const/4 v8, 0x1

    .line 83
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzh;->a(D)D

    move-result-wide v10

    cmpg-double v0, v10, v1

    if-gez v0, :cond_3c6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v10

    .line 84
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_3ca

    .line 85
    :cond_3c6
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 86
    :cond_3ca
    :goto_3ca
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 87
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    double-to-int v1, v6

    :goto_3d0
    int-to-double v2, v1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_3e3

    .line 88
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d0

    :cond_3e3
    :goto_3e3
    return-object v0

    :pswitch_3e4
    move-object/from16 v9, p1

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 90
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    if-nez v0, :cond_3f5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_3fc

    .line 92
    :cond_3f5
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 93
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzae;->s(I)V

    :goto_3fc
    return-object v0

    :pswitch_3fd
    move-object/from16 v9, p1

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 94
    invoke-static {v6, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    if-eqz v0, :cond_434

    const/4 v2, 0x0

    :goto_40c
    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_434

    .line 96
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->u(I)Z

    move-result v1

    if-eqz v1, :cond_431

    .line 97
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 99
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->u(I)Z

    move-result v4

    if-eqz v4, :cond_42e

    .line 100
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    .line 101
    :cond_42e
    invoke-virtual {v9, v3, v1}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    :cond_431
    add-int/lit8 v2, v2, 0x1

    goto :goto_40c

    :cond_434
    return-object v9

    :pswitch_435
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 102
    invoke-static {v9, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbb;->c(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    return-object v0

    :pswitch_441
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v1, 0x1

    .line 103
    invoke-static {v9, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbb;->c(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    return-object v0

    :pswitch_44d
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    .line 104
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_475

    .line 105
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_475

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzap;

    .line 106
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v2

    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_45d

    :cond_475
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_484
    move-object/from16 v9, p1

    move-object/from16 v0, p3

    const/4 v2, 0x0

    .line 109
    invoke-static {v13, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    if-nez v0, :cond_495

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_49f

    :cond_495
    add-int/lit8 v0, v0, -0x1

    .line 111
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 112
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->s(I)V

    move-object v0, v1

    :goto_49f
    return-object v0

    :pswitch_4a0
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 113
    invoke-static {v14, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 115
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v2, :cond_4cf

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    if-nez v1, :cond_4c7

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 117
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    goto :goto_4ce

    .line 118
    :cond_4c7
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    const/4 v1, 0x0

    .line 119
    invoke-static {v9, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzbb;->b(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    :goto_4ce
    return-object v0

    .line 120
    :cond_4cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4d5
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v4, 0x2

    .line 122
    invoke-static {v15, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->j(Ljava/lang/String;ILjava/util/List;)V

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    .line 123
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f2

    const/4 v5, 0x0

    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    .line 125
    :cond_4f2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    .line 126
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_539

    .line 127
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_520

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v5, v0

    goto :goto_52c

    .line 130
    :cond_520
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->a(D)D

    move-result-wide v5

    :goto_52c
    cmpg-double v0, v5, v1

    if-gez v0, :cond_539

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    :cond_539
    cmpg-double v0, v5, v1

    if-gez v0, :cond_547

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 132
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    goto :goto_57b

    .line 133
    :cond_547
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_551
    if-ltz v0, :cond_572

    .line 134
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->u(I)Z

    move-result v1

    if-eqz v1, :cond_56f

    .line 135
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/measurement/zzh;->l(Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Z

    move-result v1

    if-eqz v1, :cond_56f

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzah;

    int-to-double v2, v0

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    move-object v0, v1

    goto :goto_57b

    :cond_56f
    add-int/lit8 v0, v0, -0x1

    goto :goto_551

    :cond_572
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 137
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    :goto_57b
    return-object v0

    :pswitch_57c
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v1, 0x1

    .line 138
    invoke-static {v12, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->j(Ljava/lang/String;ILjava/util/List;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    if-nez v1, :cond_58f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->k:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_5bd

    .line 140
    :cond_58f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b1

    const/4 v1, 0x0

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzan;

    if-nez v1, :cond_5ae

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzau;

    if-eqz v1, :cond_5a9

    goto :goto_5ae

    .line 143
    :cond_5a9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b3

    :cond_5ae
    :goto_5ae
    const-string v0, ""

    goto :goto_5b3

    :cond_5b1
    const-string v0, ","

    .line 144
    :goto_5b3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    .line 145
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzae;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_5bd
    return-object v0

    :pswitch_5be
    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v4, 0x2

    .line 146
    invoke-static {v5, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->j(Ljava/lang/String;ILjava/util/List;)V

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    .line 147
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5db

    const/4 v5, 0x0

    .line 148
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    .line 149
    :cond_5db
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_61b

    .line 150
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->a(D)D

    move-result-wide v5

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    int-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_60b

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 153
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    goto :goto_651

    :cond_60b
    cmpg-double v0, v5, v1

    if-gez v0, :cond_61a

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v1, v0, v5

    goto :goto_61b

    :cond_61a
    move-wide v1, v5

    .line 155
    :cond_61b
    :goto_61b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v0

    :cond_61f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_648

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v5, v3

    cmpg-double v7, v5, v1

    if-ltz v7, :cond_61f

    .line 157
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzh;->l(Lcom/google/android/gms/internal/measurement/zzap;Lcom/google/android/gms/internal/measurement/zzap;)Z

    move-result v3

    if-eqz v3, :cond_61f

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 158
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    goto :goto_651

    :cond_648
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 159
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    :goto_651
    return-object v0

    :pswitch_652
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    move-object v2, v3

    const/4 v4, 0x1

    move-object/from16 v3, p2

    .line 160
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 162
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v2, :cond_680

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->k()I

    move-result v1

    if-nez v1, :cond_677

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_67f

    .line 164
    :cond_677
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    const/4 v1, 0x0

    .line 165
    invoke-static {v9, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzbb;->b(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->d:Lcom/google/android/gms/internal/measurement/zzap;

    :goto_67f
    return-object v0

    .line 166
    :cond_680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_686
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v2, v20

    const/4 v4, 0x1

    .line 168
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 170
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v2, :cond_6e6

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->k()I

    move-result v1

    if-nez v1, :cond_6af

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 172
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    goto :goto_6e5

    .line 173
    :cond_6af
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->d()Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 174
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 175
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v9, v3, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzbb;->b(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 176
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e4

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 179
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 180
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzae;

    .line 181
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_6c5

    :cond_6e4
    move-object v0, v2

    :goto_6e5
    return-object v0

    .line 183
    :cond_6e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6ec
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    const/4 v4, 0x1

    .line 185
    invoke-static {v9, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->h(Ljava/lang/String;ILjava/util/List;)V

    const/4 v4, 0x0

    .line 186
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 187
    instance-of v4, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v4, :cond_72a

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    if-nez v1, :cond_710

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->i:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_729

    .line 189
    :cond_710
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 190
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzbb;->b(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v1

    if-eq v0, v1, :cond_727

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->j:Lcom/google/android/gms/internal/measurement/zzap;

    goto :goto_729

    :cond_727
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzap;->i:Lcom/google/android/gms/internal/measurement/zzap;

    :goto_729
    return-object v0

    .line 192
    :cond_72a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_730
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->d()Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    .line 195
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_792

    .line 196
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_744
    :goto_744
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_792

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzap;

    .line 197
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v2

    .line 198
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_78a

    .line 199
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzae;

    .line 200
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v5

    .line 201
    instance-of v6, v2, Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v6, :cond_786

    .line 202
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 203
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v6

    .line 204
    :goto_769
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_744

    .line 205
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v7

    add-int/2addr v8, v5

    invoke-virtual {v4, v8, v7}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_769

    .line 207
    :cond_786
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_744

    .line 208
    :cond_78a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_792
    return-object v1

    nop

    :sswitch_data_794
    .sparse-switch
        -0x69e9ad94 -> :sswitch_f0
        -0x50c088ec -> :sswitch_e4
        -0x4bf73488 -> :sswitch_da
        -0x37b90a9a -> :sswitch_cd
        -0x3565b984 -> :sswitch_c2
        -0x28732996 -> :sswitch_ba
        -0x1bdda92d -> :sswitch_b2
        -0x108c6a77 -> :sswitch_a7
        0x1a55c -> :sswitch_9f
        0x1b251 -> :sswitch_96
        0x31dd2a -> :sswitch_8e
        0x34af1a -> :sswitch_83
        0x35f4f4 -> :sswitch_7a
        0x35f59e -> :sswitch_71
        0x5c6731b -> :sswitch_66
        0x6856c82 -> :sswitch_5c
        0x6873d92 -> :sswitch_52
        0x398d4c56 -> :sswitch_46
        0x418e52e2 -> :sswitch_3c
        0x73d44649 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_7e6
    .packed-switch 0x0
        :pswitch_730
        :pswitch_6ec
        :pswitch_686
        :pswitch_652
        :pswitch_5be
        :pswitch_57c
        :pswitch_4d5
        :pswitch_4a0
        :pswitch_484
        :pswitch_44d
        :pswitch_441
        :pswitch_435
        :pswitch_3fd
        :pswitch_3e4
        :pswitch_358
        :pswitch_2e0
        :pswitch_285
        :pswitch_1b8
        :pswitch_1a3
        :pswitch_111
    .end packed-switch
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;
    .registers 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->o()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->u(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzap;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzah;

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/zzai;->a(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->e()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    return-object v0

    :cond_4c
    if-eqz p4, :cond_58

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->e()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8
    :cond_58
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->t(ILcom/google/android/gms/internal/measurement/zzap;)V

    goto :goto_9

    :cond_5c
    return-object v0
.end method

.method private static c(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 13

    const-string v0, "reduce"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->i(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    .line 2
    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzh;->j(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v4, :cond_a0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_36

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->b(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    .line 7
    instance-of v4, p2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez v4, :cond_2e

    goto :goto_3d

    .line 8
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to parse initial value"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result p2

    if-eqz p2, :cond_98

    const/4 p2, 0x0

    .line 11
    :goto_3d
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzai;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->l()I

    move-result v4

    if-eqz p3, :cond_47

    const/4 v5, 0x0

    goto :goto_49

    :cond_47
    add-int/lit8 v5, v4, -0x1

    :goto_49
    const/4 v6, -0x1

    if-eqz p3, :cond_4e

    add-int/2addr v4, v6

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    :goto_4f
    if-eq v1, p3, :cond_52

    goto :goto_53

    :cond_52
    const/4 v6, 0x1

    :goto_53
    if-nez p2, :cond_5a

    .line 13
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    goto :goto_95

    :cond_5a
    :goto_5a
    sub-int p3, v4, v5

    mul-int p3, p3, v6

    if-ltz p3, :cond_97

    .line 14
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->u(I)Z

    move-result p3

    if-eqz p3, :cond_95

    const/4 p3, 0x4

    new-array p3, p3, [Lcom/google/android/gms/internal/measurement/zzap;

    aput-object p2, p3, v0

    .line 15
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzae;->m(I)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    aput-object p2, p3, v1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzah;

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p2, v7}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    aput-object p2, p3, v2

    const/4 p2, 0x3

    aput-object p0, p3, p2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 16
    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzai;->a(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object p2

    .line 17
    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/zzag;

    if-nez p3, :cond_8d

    goto :goto_95

    .line 18
    :cond_8d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reduce operation failed"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    :goto_95
    add-int/2addr v5, v6

    goto :goto_5a

    :cond_97
    return-object p2

    .line 20
    :cond_98
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty array with no initial value error"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_a0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback should be a method"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a9

    :goto_a8
    throw p0

    :goto_a9
    goto :goto_a8
.end method
