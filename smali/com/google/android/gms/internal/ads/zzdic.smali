###### Class com.google.android.gms.internal.ads.zzdic (com.google.android.gms.internal.ads.zzdic)
.class public final Lcom/google/android/gms/internal/ads/zzdic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdmq;

.field private final b:Lcom/google/android/gms/internal/ads/zzdlf;

.field private c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzdlf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdic;->a:Lcom/google/android/gms/internal/ads/zzdmq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdic;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdic;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static final f(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_4

    .line 2
    :catch_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->D(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcet;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdic;->a:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->X3()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdmq;->a(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "policy_validator"

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdhy;-><init>(Lcom/google/android/gms/internal/ads/zzdic;)V

    const-string v2, "/sendMessageToSdk"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcei;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhz;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdhz;-><init>(Lcom/google/android/gms/internal/ads/zzdic;Landroid/view/WindowManager;Landroid/view/View;)V

    const-string v2, "/hideValidatorOverlay"

    .line 5
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcei;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhz;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbhz;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbpz;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;)V

    const-string v2, "/open"

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcei;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdic;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdia;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdia;-><init>(Lcom/google/android/gms/internal/ads/zzdic;Landroid/view/View;Landroid/view/WindowManager;)V

    const-string p1, "/loadNativeAdPolicyViolations"

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzdlf;->j(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdic;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdib;->a:Lcom/google/android/gms/internal/ads/zzdib;

    const-string v2, "/showValidatorOverlay"

    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzdlf;->j(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    .line 9
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdic;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic c(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 6

    const-string p4, "Hide native ad policy validator overlay."

    .line 1
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object p4

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    if-eqz p4, :cond_1f

    .line 4
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object p4

    invoke-interface {p1, p4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5
    :cond_1f
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdic;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p2, :cond_37

    if-eqz p1, :cond_37

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdic;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_37
    return-void
.end method

.method final synthetic d(Ljava/util/Map;Z)V
    .registers 5

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "validatorHtmlLoaded"

    .line 2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdic;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v0, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic e(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 16

    .line 1
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->J()Lcom/google/android/gms/internal/ads/zzcfv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/ads/zzdhw;-><init>(Lcom/google/android/gms/internal/ads/zzdic;Ljava/util/Map;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfv;->n0(Lcom/google/android/gms/internal/ads/zzcft;)V

    if-nez p4, :cond_f

    return-void

    .line 3
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "validator_width"

    .line 4
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->u7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdic;->f(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "validator_height"

    .line 8
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->v7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 11
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdic;->f(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "validator_x"

    .line 12
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdic;->f(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "validator_y"

    .line 13
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzdic;->f(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcfx;->b(II)Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v1

    .line 14
    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzcei;->C0(Lcom/google/android/gms/internal/ads/zzcfx;)V

    .line 15
    :try_start_6b
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->V()Landroid/webkit/WebView;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->w7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->V()Landroid/webkit/WebView;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->x7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_a1
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_a1} :catch_a2

    goto :goto_a3

    :catch_a2
    nop

    .line 23
    :goto_a3
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbx;->b()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 24
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 26
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v1, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "orientation"

    .line 27
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_c7

    goto :goto_fb

    :cond_c7
    const-string v2, "1"

    .line 30
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    const-string v2, "2"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    goto :goto_db

    .line 31
    :cond_d8
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_dd

    .line 32
    :cond_db
    :goto_db
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_dd
    sub-int/2addr v1, v0

    move v9, v1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhx;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzdhx;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdic;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_fb

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_fb

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdic;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_fb
    :goto_fb
    const-string p1, "overlay_url"

    .line 36
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10c

    .line 38
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcei;->loadUrl(Ljava/lang/String;)V

    :cond_10c
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhw (com.google.android.gms.internal.ads.zzdhw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcft;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdic;

.field public final synthetic p:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdic;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhw;->o:Lcom/google/android/gms/internal/ads/zzdic;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhw;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final S(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhw;->o:Lcom/google/android/gms/internal/ads/zzdic;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhw;->p:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdic;->d(Ljava/util/Map;Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhx (com.google.android.gms.internal.ads.zzdhx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic o:Landroid/view/View;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzcei;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic s:I

.field public final synthetic t:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->o:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhx;->p:Lcom/google/android/gms/internal/ads/zzcei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhx;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhx;->r:Landroid/view/WindowManager$LayoutParams;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdhx;->s:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdhx;->t:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhx;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhx;->p:Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhx;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhx;->r:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdhx;->s:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdhx;->t:Landroid/view/WindowManager;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {v0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_45

    :cond_22
    const-string v0, "1"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "2"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_39

    .line 6
    :cond_33
    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3e

    .line 7
    :cond_39
    :goto_39
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 8
    :goto_3e
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    :goto_45
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhy (com.google.android.gms.internal.ads.zzdhy)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdic;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdic;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhy;->a:Lcom/google/android/gms/internal/ads/zzdic;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhy;->a:Lcom/google/android/gms/internal/ads/zzdic;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdic;->b(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhz (com.google.android.gms.internal.ads.zzdhz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdic;

.field public final synthetic b:Landroid/view/WindowManager;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdic;Landroid/view/WindowManager;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->a:Lcom/google/android/gms/internal/ads/zzdic;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhz;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhz;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->a:Lcom/google/android/gms/internal/ads/zzdic;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhz;->c:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdic;->c(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdia (com.google.android.gms.internal.ads.zzdia)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdic;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdic;Landroid/view/View;Landroid/view/WindowManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdia;->a:Lcom/google/android/gms/internal/ads/zzdic;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdia;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdia;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->a:Lcom/google/android/gms/internal/ads/zzdic;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdia;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdia;->c:Landroid/view/WindowManager;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdic;->e(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdib (com.google.android.gms.internal.ads.zzdib)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzdib;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdib;->a:Lcom/google/android/gms/internal/ads/zzdib;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    const-string p2, "Show native ad policy validator overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
