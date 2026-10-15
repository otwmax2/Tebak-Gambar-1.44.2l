###### Class com.google.android.gms.internal.ads.zzbqe (com.google.android.gms.internal.ads.zzbqe)
.class public final Lcom/google/android/gms/internal/ads/zzbqe;
.super Lcom/google/android/gms/internal/ads/zzbqf;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/zzcei;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/WindowManager;

.field private final f:Lcom/google/android/gms/internal/ads/zzbab;

.field g:Landroid/util/DisplayMetrics;

.field private h:F

.field i:I

.field j:I

.field private k:I

.field l:I

.field m:I

.field n:I

.field o:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbab;)V
    .registers 5

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->n:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->o:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->f:Lcom/google/android/gms/internal/ads/zzbab;

    const-string p1, "window"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->e:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 11

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    new-instance p1, Landroid/util/DisplayMetrics;

    .line 2
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->e:Landroid/view/WindowManager;

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    .line 5
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->h:F

    .line 6
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->k:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->i:I

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->j:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_4b

    goto :goto_6d

    .line 11
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->n(Landroid/app/Activity;)[I

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->l:I

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->g:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->m:I

    goto :goto_75

    .line 14
    :cond_6d
    :goto_6d
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->l:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->m:I

    :goto_75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->n:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->j:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->o:I

    goto :goto_8f

    .line 16
    :cond_8a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 17
    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzcei;->measure(II)V

    .line 18
    :goto_8f
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->i:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->j:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbqe;->l:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbqe;->m:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbqe;->h:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbqe;->k:I

    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbqf;->e(IIIIFI)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbqd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbqd;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->f:Lcom/google/android/gms/internal/ads/zzbab;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    .line 20
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:"

    .line 21
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbab;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqd;->e(Z)Lcom/google/android/gms/internal/ads/zzbqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->f:Lcom/google/android/gms/internal/ads/zzbab;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 24
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms:"

    .line 25
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbab;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 27
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqd;->c(Z)Lcom/google/android/gms/internal/ads/zzbqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->f:Lcom/google/android/gms/internal/ads/zzbab;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbab;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqd;->a(Z)Lcom/google/android/gms/internal/ads/zzbqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->f:Lcom/google/android/gms/internal/ads/zzbab;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbab;->c()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbqd;->d(Z)Lcom/google/android/gms/internal/ads/zzbqd;

    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqd;->b(Z)Lcom/google/android/gms/internal/ads/zzbqd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqd;->h(Lcom/google/android/gms/internal/ads/zzbqd;)Z

    move-result v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqd;->j(Lcom/google/android/gms/internal/ads/zzbqd;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqd;->f(Lcom/google/android/gms/internal/ads/zzbqd;)Z

    move-result v3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqd;->i(Lcom/google/android/gms/internal/ads/zzbqd;)Z

    move-result v4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqd;->g(Lcom/google/android/gms/internal/ads/zzbqd;)Z

    move-result p1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 31
    :try_start_101
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sms"

    .line 32
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "tel"

    .line 33
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "calendar"

    .line 34
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "storePicture"

    .line 35
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "inlineVideo"

    .line 36
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_124
    .catch Lorg/json/JSONException; {:try_start_101 .. :try_end_124} :catch_125

    goto :goto_12c

    :catch_125
    move-exception p1

    const-string v1, "Error occurred while obtaining the MRAID capabilities."

    .line 37
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_12c
    const-string v1, "onDeviceFeaturesReceived"

    .line 38
    invoke-interface {v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzbki;->w(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 39
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzcei;->getLocationOnScreen([I)V

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzbyt;->g(Landroid/content/Context;I)I

    move-result v0

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->g(Landroid/content/Context;I)I

    move-result p2

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzbqe;->h(II)V

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->j(I)Z

    move-result p1

    if-eqz p1, :cond_15f

    const-string p1, "Dispatching Ready Event."

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    :cond_15f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 45
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->k()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqf;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final h(II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->o(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v2

    if-nez v2, :cond_88

    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcei;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcei;->getHeight()I

    move-result v3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->P:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6f

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcfx;->c:I

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :cond_5c
    :goto_5c
    if-nez v3, :cond_6f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v3

    if-eqz v3, :cond_70

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcei;->M()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcfx;->b:I

    goto :goto_70

    :cond_6f
    move v1, v3

    .line 13
    :cond_70
    :goto_70
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->g(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->n:I

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqe;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->g(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->o:I

    :cond_88
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbqe;->n:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbqe;->o:I

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbqf;->b(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqe;->c:Lcom/google/android/gms/internal/ads/zzcei;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->J()Lcom/google/android/gms/internal/ads/zzcfv;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfv;->V0(II)V

    return-void
.end method
