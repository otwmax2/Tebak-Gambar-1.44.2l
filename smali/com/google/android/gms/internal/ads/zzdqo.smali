###### Class com.google.android.gms.internal.ads.zzdqo (com.google.android.gms.internal.ads.zzdqo)
.class public final Lcom/google/android/gms/internal/ads/zzdqo;
.super Lcom/google/android/gms/internal/ads/zzbio;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzdqr;

.field private final p:Lcom/google/android/gms/internal/ads/zzdqm;

.field private final q:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqr;Lcom/google/android/gms/internal/ads/zzdqm;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbio;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->o:Lcom/google/android/gms/internal/ads/zzdqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    return-void
.end method

.method private static Ta(Ljava/util/Map;)Lcom/google/android/gms/ads/internal/client/zzl;
    .registers 31

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>()V

    const-string v1, "ad_request"

    move-object/from16 v2, p0

    .line 2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_16

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzm;->a()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    return-object v0

    .line 4
    :cond_16
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :try_start_24
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 7
    :cond_27
    :goto_27
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 8
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_35} :catch_10e

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_17a

    goto :goto_81

    :sswitch_3b
    const-string v3, "tagForChildDirectedTreatment"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x3

    goto :goto_82

    :sswitch_45
    const-string v3, "maxAdContentRating"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x5

    goto :goto_82

    :sswitch_4f
    const-string v3, "keywords"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x1

    goto :goto_82

    :sswitch_59
    const-string v3, "httpTimeoutMillis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x6

    goto :goto_82

    :sswitch_63
    const-string v3, "tagForUnderAgeOfConsent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x4

    goto :goto_82

    :sswitch_6d
    const-string v3, "isTestDevice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x2

    goto :goto_82

    :sswitch_77
    const-string v3, "extras"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, 0x0

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v1, -0x1

    :goto_82
    packed-switch v1, :pswitch_data_198

    .line 10
    :try_start_85
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_27

    .line 11
    :pswitch_89
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzm;->c(I)Lcom/google/android/gms/ads/internal/client/zzm;

    goto :goto_27

    .line 13
    :pswitch_91
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 14
    sget-object v3, Lcom/google/android/gms/ads/RequestConfiguration;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzm;->f(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzm;

    goto :goto_27

    .line 16
    :pswitch_a1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 17
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/client/zzm;->h(I)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 18
    :cond_ac
    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/client/zzm;->h(I)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 19
    :pswitch_b1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/client/zzm;->g(I)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 21
    :cond_bc
    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/client/zzm;->g(I)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 22
    :pswitch_c1
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzm;->d(Z)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 24
    :pswitch_ca
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :goto_d2
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 27
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 29
    :cond_e0
    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzm;->e(Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 31
    :pswitch_e8
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    new-instance v1, Landroid/os/Bundle;

    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    :goto_f0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 34
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f0

    .line 37
    :cond_102
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzm;->b(Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/client/zzm;

    goto/16 :goto_27

    .line 39
    :cond_10a
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_10d} :catch_10e

    goto :goto_113

    :catch_10e
    const-string v1, "Ad Request json was malformed, parsing ended early."

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 41
    :goto_113
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzm;->a()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzl;->A:Landroid/os/Bundle;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_128

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzl;->q:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzl;->A:Landroid/os/Bundle;

    .line 43
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_128
    move-object v8, v1

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl;

    move-object v4, v1

    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zzl;->o:I

    iget-wide v6, v0, Lcom/google/android/gms/ads/internal/client/zzl;->p:J

    iget v9, v0, Lcom/google/android/gms/ads/internal/client/zzl;->r:I

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/client/zzl;->s:Ljava/util/List;

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/client/zzl;->t:Z

    iget v12, v0, Lcom/google/android/gms/ads/internal/client/zzl;->u:I

    iget-boolean v13, v0, Lcom/google/android/gms/ads/internal/client/zzl;->v:Z

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/zzl;->w:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/zzl;->x:Lcom/google/android/gms/ads/internal/client/zzfh;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->y:Landroid/location/Location;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->z:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->A:Landroid/os/Bundle;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->B:Landroid/os/Bundle;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->C:Ljava/util/List;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->D:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->E:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->F:Z

    move/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->G:Lcom/google/android/gms/ads/internal/client/zzc;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->H:I

    move/from16 v25, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->I:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->J:Ljava/util/List;

    move-object/from16 v27, v2

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->K:I

    move/from16 v28, v2

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzl;->L:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 44
    invoke-direct/range {v4 .. v29}, Lcom/google/android/gms/ads/internal/client/zzl;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfh;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-object v1

    :sswitch_data_17a
    .sparse-switch
        -0x4cd5119d -> :sswitch_77
        -0x3203e9ae -> :sswitch_6d
        -0x2bb75c13 -> :sswitch_63
        -0x5f434a1 -> :sswitch_59
        0x1f2e9faa -> :sswitch_4f
        0x239f260f -> :sswitch_45
        0x54230b03 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_ca
        :pswitch_c1
        :pswitch_b1
        :pswitch_a1
        :pswitch_91
        :pswitch_89
    .end packed-switch
.end method


# virtual methods
.method public final I(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received H5 gmsg: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->l(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "action"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string p1, "H5 gmsg did not contain an action"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2283a781

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_5b

    const v2, 0x33ebcb90

    if-eq v1, v2, :cond_51

    goto :goto_65

    :cond_51
    const-string v1, "initialize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x0

    goto :goto_66

    :cond_5b
    const-string v1, "dispose_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v1, -0x1

    :goto_66
    if-eqz v1, :cond_2bd

    if-eq v1, v5, :cond_29d

    const-string v1, "obj_id"

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    :try_start_72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_79} :catch_28f
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_79} :catch_28f

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2c8

    goto :goto_c6

    :sswitch_81
    const-string v3, "create_rewarded_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const/4 v3, 0x3

    goto :goto_c7

    :sswitch_8b
    const-string v3, "dispose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const/4 v3, 0x6

    goto :goto_c7

    :sswitch_95
    const-string v3, "load_interstitial_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const/4 v3, 0x1

    goto :goto_c7

    :sswitch_9f
    const-string v5, "create_interstitial_ad"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    goto :goto_c7

    :sswitch_a8
    const-string v3, "load_rewarded_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const/4 v3, 0x4

    goto :goto_c7

    :sswitch_b2
    const-string v3, "show_rewarded_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const/4 v3, 0x5

    goto :goto_c7

    :sswitch_bc
    const-string v3, "show_interstitial_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const/4 v3, 0x2

    goto :goto_c7

    :cond_c6
    :goto_c6
    const/4 v3, -0x1

    :goto_c7
    const-string v4, "Could not create H5 ad, missing ad unit id"

    const-string v5, " with ad unit "

    const-string v6, "Could not create H5 ad, object ID already exists"

    const-string v7, "ad_unit"

    const-string v8, "Could not show H5 ad, object ID does not exist"

    const-string v9, "Could not load H5 ad, object ID does not exist"

    const-string v10, "Could not create H5 ad, too many existing objects"

    packed-switch v3, :pswitch_data_2e6

    const-string p1, "H5 gmsg contained invalid action: "

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 16
    :pswitch_e2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqh;

    if-nez p1, :cond_f6

    const-string p1, "Could not dispose H5 ad, object ID does not exist"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_f6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqh;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disposed H5 ad #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-void

    :pswitch_113
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqh;

    if-nez p1, :cond_12a

    .line 23
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->q(J)V

    return-void

    .line 25
    :cond_12a
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqh;->a()V

    return-void

    :pswitch_12e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqh;

    if-nez v0, :cond_145

    .line 27
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 28
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->q(J)V

    return-void

    .line 29
    :cond_145
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqo;->Ta(Ljava/util/Map;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqh;->b(Lcom/google/android/gms/ads/internal/client/zzl;)V

    return-void

    :pswitch_14d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->P8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_16e

    .line 33
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->i(J)V

    return-void

    :cond_16e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 36
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 37
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->i(J)V

    return-void

    .line 38
    :cond_183
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->i(J)V

    return-void

    :cond_198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->o:Lcom/google/android/gms/internal/ads/zzdqr;

    .line 42
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqr;->zzb()Lcom/google/android/gms/internal/ads/zzdqi;

    move-result-object v0

    .line 43
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqi;->W(J)Lcom/google/android/gms/internal/ads/zzdqi;

    .line 44
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqi;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdqi;

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqi;->a()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqj;->zzb()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 47
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->h(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created H5 rewarded #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-void

    :pswitch_1d1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqh;

    if-nez p1, :cond_1e8

    .line 51
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 52
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->f(J)V

    return-void

    .line 53
    :cond_1e8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdqh;->a()V

    return-void

    :pswitch_1ec
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqh;

    if-nez v0, :cond_203

    .line 55
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 56
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->f(J)V

    return-void

    .line 57
    :cond_203
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqo;->Ta(Ljava/util/Map;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqh;->b(Lcom/google/android/gms/ads/internal/client/zzl;)V

    return-void

    .line 58
    :pswitch_20b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 59
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->P8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_22c

    .line 62
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 63
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->i(J)V

    return-void

    :cond_22c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_241

    .line 65
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 66
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->i(J)V

    return-void

    .line 67
    :cond_241
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 69
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 70
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->i(J)V

    return-void

    :cond_256
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->o:Lcom/google/android/gms/internal/ads/zzdqr;

    .line 71
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqr;->zzb()Lcom/google/android/gms/internal/ads/zzdqi;

    move-result-object v0

    .line 72
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqi;->W(J)Lcom/google/android/gms/internal/ads/zzdqi;

    .line 73
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqi;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdqi;

    .line 74
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqi;->a()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqj;->zza()Lcom/google/android/gms/internal/ads/zzdqt;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 76
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqm;->h(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created H5 interstitial #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-void

    .line 79
    :catch_28f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5 gmsg did not contain a valid object id: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_29d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqh;

    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdqh;->zza()V

    goto :goto_2a7

    :cond_2b7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void

    :cond_2bd
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->p:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->a()V

    return-void

    :sswitch_data_2c8
    .sparse-switch
        -0x6abfbf2c -> :sswitch_bc
        -0x4b7b584e -> :sswitch_b2
        -0xf5303e5 -> :sswitch_a8
        0x177a28d3 -> :sswitch_9f
        0x22e638bd -> :sswitch_95
        0x63a5261f -> :sswitch_8b
        0x7db86731 -> :sswitch_81
    .end sparse-switch

    :pswitch_data_2e6
    .packed-switch 0x0
        :pswitch_20b
        :pswitch_1ec
        :pswitch_1d1
        :pswitch_14d
        :pswitch_12e
        :pswitch_113
        :pswitch_e2
    .end packed-switch
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
