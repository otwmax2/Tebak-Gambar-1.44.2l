###### Class com.google.android.gms.internal.ads.zzdff (com.google.android.gms.internal.ads.zzdff)
.class public final Lcom/google/android/gms/internal/ads/zzdff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgq;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private A:Lcom/google/android/gms/ads/internal/client/zzcs;

.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzdgt;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/google/android/gms/internal/ads/zzdlf;

.field private final e:Lcom/google/android/gms/internal/ads/zzdgi;

.field private final f:Lcom/google/android/gms/internal/ads/zzapw;

.field private final g:Lcom/google/android/gms/internal/ads/zzcvg;

.field private final h:Lcom/google/android/gms/internal/ads/zzcum;

.field private final i:Lcom/google/android/gms/internal/ads/zzdca;

.field private final j:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final k:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final l:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final m:Lcom/google/android/gms/internal/ads/zzcng;

.field private final n:Lcom/google/android/gms/internal/ads/zzdhm;

.field private final o:Lcom/google/android/gms/common/util/Clock;

.field private final p:Lcom/google/android/gms/internal/ads/zzdbw;

.field private final q:Lcom/google/android/gms/internal/ads/zzfff;

.field private final r:Lcom/google/android/gms/internal/ads/zzfen;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/graphics/Point;

.field private x:Landroid/graphics/Point;

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdgt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzcvg;Lcom/google/android/gms/internal/ads/zzcum;Lcom/google/android/gms/internal/ads/zzdca;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzcng;Lcom/google/android/gms/internal/ads/zzdhm;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzfff;Lcom/google/android/gms/internal/ads/zzfen;)V
    .registers 22

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->s:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->u:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->v:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    .line 2
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->y:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->z:J

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->b:Lcom/google/android/gms/internal/ads/zzdgt;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->f:Lcom/google/android/gms/internal/ads/zzapw;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->g:Lcom/google/android/gms/internal/ads/zzcvg;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->h:Lcom/google/android/gms/internal/ads/zzcum;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->i:Lcom/google/android/gms/internal/ads/zzdca;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->j:Lcom/google/android/gms/internal/ads/zzeyc;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->k:Lcom/google/android/gms/internal/ads/zzbzg;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->l:Lcom/google/android/gms/internal/ads/zzeyx;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->m:Lcom/google/android/gms/internal/ads/zzcng;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->n:Lcom/google/android/gms/internal/ads/zzdhm;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->o:Lcom/google/android/gms/common/util/Clock;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->p:Lcom/google/android/gms/internal/ads/zzdbw;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->q:Lcom/google/android/gms/internal/ads/zzfff;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdff;->r:Lcom/google/android/gms/internal/ads/zzfen;

    return-void
.end method

.method static bridge synthetic A(Lcom/google/android/gms/internal/ads/zzdff;)Lcom/google/android/gms/internal/ads/zzcvg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdff;->g:Lcom/google/android/gms/internal/ads/zzcvg;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/google/android/gms/internal/ads/zzdff;)Lcom/google/android/gms/internal/ads/zzdca;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdff;->i:Lcom/google/android/gms/internal/ads/zzdca;

    return-object p0
.end method

.method private final v(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_48

    const/4 p2, 0x2

    if-eq p1, p2, :cond_45

    const/4 p2, 0x6

    if-eq p1, p2, :cond_42

    const/4 p1, 0x0

    return-object p1

    :cond_42
    const-string p1, "3099"

    return-object p1

    :cond_45
    const-string p1, "2099"

    return-object p1

    :cond_48
    const-string p1, "1099"

    return-object p1
.end method

.method private final w(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v1
.end method

.method private final x()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final y(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .registers 11

    const-string v0, "recordImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 2
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 4
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 5
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 6
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 7
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 8
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->a3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_41

    const-string p1, "view_signals"

    .line 12
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    const-string p1, "policy_validator_enabled"

    .line 13
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 14
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string p4, "window"

    .line 16
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    .line 17
    invoke-static {p4}, Lcom/google/android/gms/ads/internal/util/zzs;->P(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p4
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5e} :catch_e8

    const/4 p5, 0x0

    :try_start_5f
    const-string p6, "width"

    .line 18
    iget p7, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v1

    invoke-virtual {v1, p2, p7}, Lcom/google/android/gms/internal/ads/zzbyt;->g(Landroid/content/Context;I)I

    move-result p7

    .line 20
    invoke-virtual {p3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p6, "height"

    .line 21
    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object p7

    invoke-virtual {p7, p2, p4}, Lcom/google/android/gms/internal/ads/zzbyt;->g(Landroid/content/Context;I)I

    move-result p2

    .line 23
    invoke-virtual {p3, p6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-object p3, p5

    .line 24
    :goto_7f
    :try_start_7f
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->M7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string p2, "/clickRecorded"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdfc;

    .line 27
    invoke-direct {p3, p0, p5}, Lcom/google/android/gms/internal/ads/zzdfc;-><init>(Lcom/google/android/gms/internal/ads/zzdff;Lcom/google/android/gms/internal/ads/zzdfb;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdlf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    goto :goto_ad

    .line 28
    :cond_a1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string p2, "/logScionEvent"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdfa;

    .line 29
    invoke-direct {p3, p0, p5}, Lcom/google/android/gms/internal/ads/zzdfa;-><init>(Lcom/google/android/gms/internal/ads/zzdff;Lcom/google/android/gms/internal/ads/zzdez;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdlf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    .line 30
    :goto_ad
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string p2, "/nativeImpression"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdfe;

    .line 31
    invoke-direct {p3, p0, p5}, Lcom/google/android/gms/internal/ads/zzdfe;-><init>(Lcom/google/android/gms/internal/ads/zzdff;Lcom/google/android/gms/internal/ads/zzdfd;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdlf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdlf;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 33
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzq;->a(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;)V
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_c6} :catch_e8

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->s:Z

    if-nez p1, :cond_e6

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->u()Lcom/google/android/gms/ads/internal/util/zzaw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdff;->k:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdff;->j:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzeyc;->D:Lorg/json/JSONObject;

    .line 35
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->l:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/gms/ads/internal/util/zzaw;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->s:Z

    :cond_e6
    const/4 p1, 0x1

    return p1

    :catch_e8
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    .line 37
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic z(Lcom/google/android/gms/internal/ads/zzdff;)Lcom/google/android/gms/internal/ads/zzcum;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdff;->h:Lcom/google/android/gms/internal/ads/zzcum;

    return-object p0
.end method


# virtual methods
.method public final B()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdff;->zza()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->F9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->l:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->x:Z

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0
.end method

.method protected final D(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 2
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    .line 4
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 5
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 6
    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 7
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 8
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->b:Lcom/google/android/gms/internal/ads/zzdgt;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdgi;->j0()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzdgt;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_3e

    const/4 p2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p2, 0x0

    .line 10
    :goto_3f
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    .line 11
    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    .line 12
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    .line 13
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result p6

    .line 14
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    .line 15
    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->l:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    if-eqz p6, :cond_6f

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzbdl;->u:Z

    if-eqz p6, :cond_6f

    const/4 p6, 0x1

    goto :goto_70

    :cond_6f
    const/4 p6, 0x0

    .line 16
    :goto_70
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdgi;->g()Ljava/util/List;

    move-result-object p6

    .line 17
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_8b

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdgi;->U()Lcom/google/android/gms/ads/internal/client/zzel;

    move-result-object p6

    if-eqz p6, :cond_8b

    const/4 p6, 0x1

    goto :goto_8c

    :cond_8b
    const/4 p6, 0x0

    .line 18
    :goto_8c
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->n:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 19
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdhm;->a()Lcom/google/android/gms/internal/ads/zzbfr;

    move-result-object p5

    if-eqz p5, :cond_a6

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    .line 20
    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_a6

    const-string p5, "custom_one_point_five_click_eligible"

    .line 21
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_a6
    const-string p5, "timestamp"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->o:Lcom/google/android/gms/common/util/Clock;

    .line 22
    invoke-interface {p6}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->v:Z

    if-eqz p5, :cond_c0

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdff;->x()Z

    move-result p5

    if-eqz p5, :cond_c0

    const-string p5, "custom_click_gesture_eligible"

    .line 24
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_c0
    if-eqz p10, :cond_c7

    const-string p5, "is_custom_click_gesture"

    .line 25
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_c7
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->b:Lcom/google/android/gms/internal/ads/zzdgt;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdgi;->j0()Ljava/lang/String;

    move-result-object p6

    .line 26
    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/ads/zzdgt;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object p5

    if-eqz p5, :cond_d6

    const/4 p3, 0x1

    .line 27
    :cond_d6
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_db} :catch_18c

    :try_start_db
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string p6, "tracking_urls_and_actions"

    .line 28
    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-nez p5, :cond_ea

    new-instance p5, Lorg/json/JSONObject;

    .line 29
    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    :cond_ea
    const-string p6, "click_string"

    .line 30
    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdff;->f:Lcom/google/android/gms/internal/ads/zzapw;

    .line 31
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object p6

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    invoke-interface {p6, p7, p5, p1}, Lcom/google/android/gms/internal/ads/zzaps;->h(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_fc} :catch_fd

    goto :goto_104

    :catch_fd
    move-exception p1

    :try_start_fe
    const-string p5, "Exception obtaining click signals"

    .line 32
    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 33
    :goto_104
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->g4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11e

    const-string p1, "open_chrome_custom_tab"

    .line 37
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_11e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->Q7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13b

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->m()Z

    move-result p1

    if-eqz p1, :cond_13b

    const-string p1, "try_fallback_for_deep_link"

    .line 40
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_13b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->R7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_158

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->m()Z

    move-result p1

    if-eqz p1, :cond_158

    const-string p1, "in_app_link_handling_for_android_11_enabled"

    .line 43
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_158
    const-string p1, "click"

    .line 44
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    .line 45
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->o:Lcom/google/android/gms/common/util/Clock;

    .line 46
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->y:J

    sub-long p5, p2, p5

    .line 47
    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdff;->z:J

    sub-long/2addr p2, p5

    .line 48
    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 49
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 50
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdlf;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 51
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzq;->a(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;)V
    :try_end_18b
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_18b} :catch_18c

    return-void

    :catch_18c
    move-exception p1

    const-string p2, "Unable to create click JSON."

    .line 52
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final R()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdff;->x()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbx;->a(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->o:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->z:J

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1a

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->y:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    .line 4
    :cond_1a
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    .line 5
    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->f:Lcom/google/android/gms/internal/ads/zzapw;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzapw;->d(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final b(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbx;->d(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->g(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->f(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->e(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->a3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2b

    :goto_29
    move-object v6, p3

    goto :goto_3f

    .line 8
    :cond_2b
    :try_start_2b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->f:Lcom/google/android/gms/internal/ads/zzapw;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    invoke-interface {p2, p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzaps;->g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_39

    move-object v6, p1

    goto :goto_3f

    :catch_39
    const-string p1, "Exception getting data."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    goto :goto_29

    :goto_3f
    const/4 v7, 0x0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->j:Lcom/google/android/gms/internal/ads/zzeyc;

    .line 12
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->h(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeyc;)Z

    move-result v8

    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdff;->y(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final c(Landroid/view/View;Ljava/util/Map;)V
    .registers 3

    .line 1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    .line 2
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    if-eqz p1, :cond_15

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->p:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdbw;->c1(Landroid/view/View;)V

    :cond_15
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->t:Z

    return-void
.end method

.method public final d(Landroid/os/Bundle;)Z
    .registers 10

    const-string v0, "impression_reporting"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdff;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p1, "The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6}, Lcom/google/android/gms/internal/ads/zzbyt;->p(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdff;->y(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->A:Lcom/google/android/gms/ads/internal/client/zzcs;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzcs;->b()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->n:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhm;->b()V

    return-void
.end method

.method public final g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->f()V

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->n:Lcom/google/android/gms/internal/ads/zzdhm;

    if-nez p1, :cond_16

    return-void

    .line 3
    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdhm;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->t:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->p:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbw;->Y0(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdff;->t:Z

    .line 4
    :cond_1a
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->m:Lcom/google/android/gms/internal/ads/zzcng;

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcng;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->k:Lcom/google/android/gms/internal/ads/zzbzg;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->i(I)Z

    move-result p1

    if-eqz p2, :cond_60

    .line 9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3a
    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_59

    .line 11
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    :cond_59
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3a

    :cond_60
    if-eqz p3, :cond_8e

    .line 14
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6a
    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_6a

    if-eqz p1, :cond_89

    .line 16
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_89
    const/4 p5, 0x0

    .line 17
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_6a

    :cond_8e
    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V
    .registers 19

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    .line 1
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-static {v2, p3, v3, p2, v4}, Lcom/google/android/gms/ads/internal/util/zzbx;->d(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 2
    invoke-static {v2, p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->g(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->f(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 4
    invoke-static {v5, p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->e(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdff;->v(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    .line 6
    invoke-static {v7, v1, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzbx;->c(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v8

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->f3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v9, 0x1

    if-ne v9, v1, :cond_41

    move-object v1, v0

    goto :goto_42

    :cond_41
    move-object v1, v6

    :goto_42
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    .line 10
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzdff;->D(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final k(Landroid/os/Bundle;)V
    .registers 15

    if-nez p1, :cond_8

    const-string p1, "Click data is null. No click is reported."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "click_reporting"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdff;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "click_signal"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const-string v2, "asset_id"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_28

    :cond_27
    move-object v8, v1

    :goto_28
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->p(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzdff;->D(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final l(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "touch_reporting"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdff;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "x"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdff;->f:Lcom/google/android/gms/internal/ads/zzapw;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaps;->d(III)V

    return-void
.end method

.method public final m(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbx;->d(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->g(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->f(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbx;->e(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "asset_view_signal"

    .line 6
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 7
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 8
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 9
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_2f} :catch_30

    return-object v0

    :catch_30
    move-exception p1

    const-string p2, "Unable to create native ad view signals JSON."

    .line 10
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final m0(Ljava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzdff;->D(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final n()V
    .registers 4

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 2
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdff;->d:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdlf;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzq;->a(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    const-string v1, ""

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->A:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-void
.end method

.method public final p()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdff;->y(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final q(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V
    .registers 24

    move-object/from16 v12, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 1
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v3, "allow_sdk_custom_click_gesture"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->F9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v4, 0x1

    :cond_24
    if-nez v4, :cond_3d

    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->v:Z

    if-nez v1, :cond_30

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdff;->x()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_3d

    :cond_37
    const-string v0, "Custom click reporting failed. Ad unit id not in the allow list."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3d
    :goto_3d
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    .line 8
    invoke-static {v1, v0, v3, v2, v5}, Lcom/google/android/gms/ads/internal/util/zzbx;->d(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbx;->g(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 10
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/util/zzbx;->f(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    .line 11
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbx;->e(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v1, p1

    .line 12
    invoke-direct {v12, v1, v0}, Lcom/google/android/gms/internal/ads/zzdff;->v(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzdff;->a:Landroid/content/Context;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    iget-object v9, v12, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;

    .line 13
    invoke-static {v8, v0, v1, v9}, Lcom/google/android/gms/ads/internal/util/zzbx;->c(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v4, :cond_cb

    :try_start_69
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v4, "custom_click_gesture_signal"

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzdff;->x:Landroid/graphics/Point;

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/zzdff;->w:Landroid/graphics/Point;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_71} :catch_bc

    :try_start_71
    new-instance v11, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_b0

    :try_start_76
    new-instance v13, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    new-instance v14, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_80} :catch_ae

    const-string v15, "y"

    const-string v2, "x"

    if-eqz v0, :cond_90

    .line 17
    :try_start_86
    iget v12, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_90
    if-eqz v10, :cond_9c

    .line 19
    iget v0, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    iget v0, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9c
    const-string v0, "start_point"

    .line 21
    invoke-virtual {v11, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "end_point"

    .line 22
    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration_ms"

    move/from16 v2, p7

    .line 23
    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_ad} :catch_ae

    goto :goto_b8

    :catch_ae
    move-exception v0

    goto :goto_b3

    :catch_b0
    move-exception v0

    const/4 v2, 0x0

    move-object v11, v2

    :goto_b3
    :try_start_b3
    const-string v2, "Error occurred while grabbing custom click gesture signals."

    .line 24
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_b8
    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_b3 .. :try_end_bb} :catch_bc

    goto :goto_cb

    :catch_bc
    move-exception v0

    const-string v1, "Error occurred while adding CustomClickGestureSignals to adJson."

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    const-string v2, "FirstPartyNativeAdCore.performCustomClickGesture"

    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    const/4 v0, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    move/from16 v10, p5

    .line 29
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzdff;->D(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/ads/internal/client/zzcw;)V
    .registers 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->u:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-nez p1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdff;->e:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdgi;->U()Lcom/google/android/gms/ads/internal/client/zzel;

    move-result-object v2

    if-eqz v2, :cond_25

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->u:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->q:Lcom/google/android/gms/internal/ads/zzfff;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdgi;->U()Lcom/google/android/gms/ads/internal/client/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzel;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdff;->r:Lcom/google/android/gms/internal/ads/zzfen;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdff;->e()V

    return-void

    :cond_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->q:Lcom/google/android/gms/internal/ads/zzfff;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzcw;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdff;->r:Lcom/google/android/gms/internal/ads/zzfen;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfff;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfen;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdff;->e()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdff;->m(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdff;->v:Z

    if-eqz p3, :cond_19

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdff;->x()Z

    move-result p3

    if-eqz p3, :cond_19

    const-string p3, "custom_click_gesture_eligible"

    const/4 p4, 0x1

    .line 4
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_19
    if-eqz p1, :cond_27

    const-string p3, "nas"

    .line 5
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p1

    const-string p3, "Unable to create native click meta data JSON."

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-object p2
.end method

.method public final t()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->v:Z

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzbfr;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->c:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string p1, "setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->n:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhm;->d(Lcom/google/android/gms/internal/ads/zzbfr;)V

    return-void
.end method

.method public final zza()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->l:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->F9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->l:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->w:I

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method
