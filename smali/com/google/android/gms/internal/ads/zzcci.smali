###### Class com.google.android.gms.internal.ads.zzcci (com.google.android.gms.internal.ads.zzcci)
.class public final Lcom/google/android/gms/internal/ads/zzcci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 5

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_30

    .line 2
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result p3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_30

    .line 3
    :catch_14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in a video GMSG: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 6
    :cond_30
    :goto_30
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result p0

    if-eqz p0, :cond_5f

    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse pixels for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", got string "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", int "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    :cond_5f
    return p3
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzcax;Ljava/util/Map;)V
    .registers 7

    const-string v0, "minBufferMs"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "socketReceiveBufferSize"

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 6
    :try_start_2a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcax;->j(I)V

    :cond_31
    if-eqz v1, :cond_3a

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 9
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcax;->h(I)V

    :cond_3a
    if-eqz v2, :cond_43

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcax;->I(I)V

    :cond_43
    if-eqz v3, :cond_4c

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcax;->J(I)V

    :cond_4c
    if-eqz p1, :cond_68

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcax;->l(I)V
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_55} :catch_56

    return-void

    :catch_56
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :cond_68
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcbj;

    const-string v3, "playerId"

    .line 2
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_21

    .line 3
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v14, v3

    goto :goto_22

    :cond_21
    move-object v14, v5

    .line 4
    :goto_22
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->m()Lcom/google/android/gms/internal/ads/zzcay;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->m()Lcom/google/android/gms/internal/ads/zzcay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcay;->a()Lcom/google/android/gms/internal/ads/zzcax;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->m()Lcom/google/android/gms/internal/ads/zzcay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcay;->a()Lcom/google/android/gms/internal/ads/zzcax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcax;->v()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_40

    :cond_3f
    move-object v3, v5

    :goto_40
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v14, :cond_60

    if-eqz v3, :cond_60

    .line 7
    invoke-virtual {v14, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    goto :goto_60

    .line 8
    :cond_4d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v14, v2, v6

    aput-object v3, v2, v4

    const-string v3, "Event intended for player %s, but sent to player %d - event ignored"

    .line 9
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    return-void

    :cond_60
    :goto_60
    const-string v3, "action"

    .line 11
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_70

    const-string v1, "Action missing from video GMSG."

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_70
    const/4 v7, 0x3

    .line 13
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbza;->j(I)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 14
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v8, "google.afma.Notify_dt"

    .line 15
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video GMSG: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    :cond_a1
    const-string v7, "background"

    .line 18
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "color"

    if-eqz v7, :cond_cb

    .line 19
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bd

    const-string v1, "Color parameter missing from background video GMSG."

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_bd
    :try_start_bd
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 23
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzcbj;->setBackgroundColor(I)V
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_c4} :catch_c5

    return-void

    :catch_c5
    const-string v1, "Invalid color parameter in background video GMSG."

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_cb
    const-string v7, "playerBackground"

    .line 25
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f3

    .line 26
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e5

    const-string v1, "Color parameter missing from playerBackground video GMSG."

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_e5
    :try_start_e5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 30
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzcbj;->G(I)V
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e5 .. :try_end_ec} :catch_ed

    return-void

    :catch_ed
    const-string v1, "Invalid color parameter in playerBackground video GMSG."

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_f3
    const-string v7, "decoderProps"

    .line 32
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "onVideoEvent"

    const-string v10, "event"

    if-eqz v8, :cond_14e

    const-string v3, "mimeTypes"

    .line 33
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_121

    const-string v1, "No MIME types specified for decoder properties inspection."

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error"

    const-string v4, "missingMimeTypes"

    .line 37
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-interface {v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_121
    new-instance v4, Ljava/util/HashMap;

    .line 39
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, ","

    .line 40
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    :goto_12d
    if-ge v6, v5, :cond_13f

    aget-object v8, v1, v6

    .line 41
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzch;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v4, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_12d

    :cond_13f
    new-instance v1, Ljava/util/HashMap;

    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 46
    :cond_14e
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->m()Lcom/google/android/gms/internal/ads/zzcay;

    move-result-object v15

    if-nez v15, :cond_15a

    const-string v1, "Could not get underlay container for a video GMSG."

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_15a
    const-string v7, "new"

    .line 48
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "position"

    .line 49
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "y"

    const-string v12, "x"

    if-nez v7, :cond_35e

    if-eqz v8, :cond_170

    goto/16 :goto_35e

    .line 50
    :cond_170
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->r()Lcom/google/android/gms/internal/ads/zzcfe;

    move-result-object v7

    const-string v8, "currentTime"

    if-eqz v7, :cond_1ad

    const-string v13, "timeupdate"

    .line 51
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a0

    .line 52
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_18e

    const-string v1, "currentTime parameter missing from timeupdate video GMSG."

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_18e
    :try_start_18e
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 55
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzcfe;->Xa(F)V
    :try_end_195
    .catch Ljava/lang/NumberFormatException; {:try_start_18e .. :try_end_195} :catch_196

    return-void

    :catch_196
    const-string v2, "Could not parse currentTime parameter from timeupdate video GMSG: "

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_1a0
    const-string v13, "skip"

    .line 58
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a9

    goto :goto_1ad

    .line 59
    :cond_1a9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcfe;->v()V

    return-void

    .line 60
    :cond_1ad
    :goto_1ad
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcay;->a()Lcom/google/android/gms/internal/ads/zzcax;

    move-result-object v7

    if-nez v7, :cond_1c1

    new-instance v1, Ljava/util/HashMap;

    .line 61
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "no_video_view"

    .line 62
    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1c1
    const-string v9, "click"

    .line 64
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e9

    .line 65
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    invoke-static {v2, v1, v12, v6}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 67
    invoke-static {v2, v1, v11, v6}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    int-to-float v13, v3

    int-to-float v14, v1

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-wide v8, v10

    .line 69
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 70
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcax;->H(Landroid/view/MotionEvent;)V

    .line 71
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 72
    :cond_1e9
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_216

    const-string v2, "time"

    .line 73
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1ff

    const-string v1, "Time parameter missing from currentTime video GMSG."

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_1ff
    :try_start_1ff
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 76
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzcax;->G(I)V
    :try_end_20b
    .catch Ljava/lang/NumberFormatException; {:try_start_1ff .. :try_end_20b} :catch_20c

    return-void

    :catch_20c
    const-string v2, "Could not parse time parameter from currentTime video GMSG: "

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_216
    const-string v8, "hide"

    .line 79
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_223

    const/4 v1, 0x4

    .line 80
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_223
    const-string v8, "load"

    .line 81
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22f

    .line 82
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcax;->B()V

    return-void

    :cond_22f
    const-string v8, "loadControl"

    .line 83
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23b

    .line 84
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzcci;->c(Lcom/google/android/gms/internal/ads/zzcax;Ljava/util/Map;)V

    return-void

    :cond_23b
    const-string v8, "muted"

    .line 85
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_257

    .line 86
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_253

    .line 87
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcax;->C()V

    return-void

    .line 88
    :cond_253
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcax;->r()V

    return-void

    :cond_257
    const-string v8, "pause"

    .line 89
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_263

    .line 90
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcax;->E()V

    return-void

    :cond_263
    const-string v8, "play"

    .line 91
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26f

    .line 92
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcax;->F()V

    return-void

    :cond_26f
    const-string v8, "show"

    .line 93
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27b

    .line 94
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_27b
    const-string v8, "src"

    .line 95
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f9

    .line 96
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v8, "periodicReportIntervalMs"

    .line 97
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_292

    goto :goto_2b4

    .line 98
    :cond_292
    :try_start_292
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_2a0
    .catch Ljava/lang/NumberFormatException; {:try_start_292 .. :try_end_2a0} :catch_2a1

    goto :goto_2b4

    .line 99
    :catch_2a1
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Video gmsg invalid numeric parameter \'periodicReportIntervalMs\': "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :goto_2b4
    new-array v8, v4, [Ljava/lang/String;

    aput-object v3, v8, v6

    const-string v9, "demuxed"

    .line 101
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2ec

    .line 102
    :try_start_2c2
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 104
    :goto_2ce
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_2dd

    .line 105
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_2da
    .catch Lorg/json/JSONException; {:try_start_2c2 .. :try_end_2da} :catch_2df

    add-int/lit8 v10, v10, 0x1

    goto :goto_2ce

    :cond_2dd
    move-object v8, v9

    goto :goto_2ec

    :catch_2df
    const-string v8, "Malformed demuxed URL list for playback: "

    .line 106
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-array v8, v4, [Ljava/lang/String;

    aput-object v3, v8, v6

    :cond_2ec
    :goto_2ec
    if-eqz v5, :cond_2f5

    .line 108
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzcbj;->O(I)V

    .line 109
    :cond_2f5
    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/ads/zzcax;->m(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2f9
    const-string v5, "touchMove"

    .line 110
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_320

    .line 111
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "dx"

    .line 112
    invoke-static {v3, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "dy"

    .line 113
    invoke-static {v3, v1, v8, v6}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    int-to-float v3, v5

    int-to-float v1, v1

    .line 114
    invoke-virtual {v7, v3, v1}, Lcom/google/android/gms/internal/ads/zzcax;->q(FF)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcci;->a:Z

    if-nez v1, :cond_46f

    .line 115
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->v()V

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzcci;->a:Z

    return-void

    :cond_320
    const-string v2, "volume"

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_348

    .line 117
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_336

    const-string v1, "Level parameter missing from volume video GMSG."

    .line 118
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_336
    :try_start_336
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 120
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzcax;->p(F)V
    :try_end_33d
    .catch Ljava/lang/NumberFormatException; {:try_start_336 .. :try_end_33d} :catch_33e

    return-void

    :catch_33e
    const-string v2, "Could not parse volume parameter from volume video GMSG: "

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_348
    const-string v1, "watermark"

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_354

    .line 124
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcax;->x()V

    return-void

    :cond_354
    const-string v1, "Unknown video action: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_35e
    :goto_35e
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 127
    invoke-static {v3, v1, v12, v6}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 128
    invoke-static {v3, v1, v11, v6}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    const-string v5, "w"

    const/4 v9, -0x1

    .line 129
    invoke-static {v3, v1, v5, v9}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    .line 130
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbar;->t3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 131
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v11

    .line 132
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v12, "."

    if-eqz v11, :cond_395

    if-ne v5, v9, :cond_38c

    .line 133
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->f()I

    move-result v5

    goto :goto_3cf

    .line 134
    :cond_38c
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->f()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_3cf

    .line 135
    :cond_395
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result v11

    if-eqz v11, :cond_3c6

    .line 136
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->f()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculate width with original width "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", videoHost.getVideoBoundingWidth() "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", x "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 138
    :cond_3c6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->f()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_3cf
    const-string v6, "h"

    .line 139
    invoke-static {v3, v1, v6, v9}, Lcom/google/android/gms/internal/ads/zzcci;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 140
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3f5

    if-ne v3, v9, :cond_3ec

    .line 142
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->e()I

    move-result v2

    goto :goto_42f

    .line 143
    :cond_3ec
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->e()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_42f

    .line 144
    :cond_3f5
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result v6

    if-eqz v6, :cond_426

    .line 145
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->e()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculate height with original height "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", videoHost.getVideoBoundingHeight() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", y "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 147
    :cond_426
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcbj;->e()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_42f
    move v10, v2

    :try_start_430
    const-string v2, "player"

    .line 148
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_43c
    .catch Ljava/lang/NumberFormatException; {:try_start_430 .. :try_end_43c} :catch_43e

    move v11, v2

    goto :goto_43f

    :catch_43e
    const/4 v11, 0x0

    :goto_43f
    const-string v2, "spherical"

    .line 149
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v7, :cond_470

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcay;->a()Lcom/google/android/gms/internal/ads/zzcax;

    move-result-object v2

    if-nez v2, :cond_470

    new-instance v13, Lcom/google/android/gms/internal/ads/zzcbi;

    const-string v2, "flags"

    .line 150
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/ads/zzcbi;-><init>(Ljava/lang/String;)V

    move-object v6, v15

    move v7, v4

    move v9, v5

    .line 151
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzcay;->c(IIIIIZLcom/google/android/gms/internal/ads/zzcbi;Ljava/lang/Integer;)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcay;->a()Lcom/google/android/gms/internal/ads/zzcax;

    move-result-object v2

    if-eqz v2, :cond_46f

    .line 152
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcci;->c(Lcom/google/android/gms/internal/ads/zzcax;Ljava/util/Map;)V

    :cond_46f
    return-void

    .line 153
    :cond_470
    invoke-virtual {v15, v4, v8, v5, v10}, Lcom/google/android/gms/internal/ads/zzcay;->b(IIII)V

    return-void
.end method
