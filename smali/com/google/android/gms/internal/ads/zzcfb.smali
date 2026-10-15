###### Class com.google.android.gms.internal.ads.zzcfb (com.google.android.gms.internal.ads.zzcfb)
.class final Lcom/google/android/gms/internal/ads/zzcfb;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/android/gms/internal/ads/zzcei;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final synthetic m0:I


# instance fields
.field private A:Lcom/google/android/gms/internal/ads/zzcep;

.field private B:Lcom/google/android/gms/ads/internal/overlay/zzl;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private C:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private D:Lcom/google/android/gms/internal/ads/zzcfx;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final E:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private F:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private G:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private H:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private I:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private J:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private K:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final L:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private M:Lcom/google/android/gms/internal/ads/zzcfe;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private N:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private O:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private P:Lcom/google/android/gms/internal/ads/zzbdk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private Q:Lcom/google/android/gms/internal/ads/zzbdi;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private R:Lcom/google/android/gms/internal/ads/zzaus;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private S:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private T:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private U:Lcom/google/android/gms/internal/ads/zzbbg;

.field private final V:Lcom/google/android/gms/internal/ads/zzbbg;

.field private W:Lcom/google/android/gms/internal/ads/zzbbg;

.field private final a0:Lcom/google/android/gms/internal/ads/zzbbh;

.field private b0:I

.field private c0:Lcom/google/android/gms/ads/internal/overlay/zzl;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d0:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e0:Lcom/google/android/gms/ads/internal/util/zzci;

.field private f0:I

.field private g0:I

.field private h0:I

.field private i0:I

.field private j0:Ljava/util/Map;

.field private final k0:Landroid/view/WindowManager;

.field private final l0:Lcom/google/android/gms/internal/ads/zzawe;

.field private final o:Lcom/google/android/gms/internal/ads/zzcfw;

.field private final p:Lcom/google/android/gms/internal/ads/zzapw;

.field private final q:Lcom/google/android/gms/internal/ads/zzbbt;

.field private final r:Lcom/google/android/gms/internal/ads/zzbzg;

.field private s:Lcom/google/android/gms/ads/internal/zzl;

.field private final t:Lcom/google/android/gms/ads/internal/zza;

.field private final u:Landroid/util/DisplayMetrics;

.field private final v:F

.field private w:Lcom/google/android/gms/internal/ads/zzeyc;

.field private x:Lcom/google/android/gms/internal/ads/zzeyf;

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcfw;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V
    .registers 16
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->y:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->z:Z

    const/4 p9, 0x1

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzcfb;->K:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->L:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->f0:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->g0:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->h0:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->i0:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->o:Lcom/google/android/gms/internal/ads/zzcfw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->E:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->H:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcfb;->p:Lcom/google/android/gms/internal/ads/zzapw;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcfb;->q:Lcom/google/android/gms/internal/ads/zzbbt;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcfb;->r:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcfb;->s:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzcfb;->t:Lcom/google/android/gms/ads/internal/zza;

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->k0:Landroid/view/WindowManager;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->P(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    .line 4
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->v:F

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcfb;->l0:Lcom/google/android/gms/internal/ads/zzawe;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzcfb;->w:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzcfb;->x:Lcom/google/android/gms/internal/ads/zzeyf;

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzci;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfw;->a()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/ads/internal/util/zzci;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->e0:Lcom/google/android/gms/ads/internal/util/zzci;

    .line 6
    invoke-virtual {p0, p5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 9
    :try_start_61
    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_64
    .catch Ljava/lang/NullPointerException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_6b

    :catch_65
    move-exception p3

    const-string p6, "Unable to enable Javascript."

    .line 10
    invoke-static {p6, p3}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_6b
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 12
    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 13
    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p3, p6, :cond_94

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->K9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 16
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_90

    .line 17
    invoke-virtual {p2, p9}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_94

    :cond_90
    const/4 p3, 0x2

    .line 18
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 19
    :cond_94
    :goto_94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    iget-object p6, p8, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    .line 20
    invoke-virtual {p3, p1, p6}, Lcom/google/android/gms/ads/internal/util/zzs;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/google/android/gms/ads/internal/util/zzm;

    invoke-direct {p6, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzm;-><init>(Landroid/webkit/WebSettings;Landroid/content/Context;)V

    .line 22
    invoke-static {p3, p6}, Lcom/google/android/gms/ads/internal/util/zzcb;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 24
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 25
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 26
    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->o1()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcfi;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcfh;

    .line 28
    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzcfh;-><init>(Lcom/google/android/gms/internal/ads/zzcei;)V

    invoke-direct {p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzcfi;-><init>(Lcom/google/android/gms/internal/ads/zzcfj;Lcom/google/android/gms/internal/ads/zzcfh;[B)V

    const-string p3, "googleAdsJsInterface"

    .line 29
    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "accessibility"

    .line 30
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    .line 31
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->w1()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbbj;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->E:Ljava/lang/String;

    const-string p6, "make_wv"

    .line 33
    invoke-direct {p3, p9, p6, p5}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzbbh;-><init>(Lcom/google/android/gms/internal/ads/zzbbj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzbbj;->c(Lcom/google/android/gms/internal/ads/zzbbj;)V

    .line 35
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->G1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 37
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_119

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->x:Lcom/google/android/gms/internal/ads/zzeyf;

    if-eqz p3, :cond_119

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    if-eqz p3, :cond_119

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->x:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    const-string p6, "gqi"

    .line 39
    invoke-virtual {p3, p6, p5}, Lcom/google/android/gms/internal/ads/zzbbj;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_119
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbj;->f()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->V:Lcom/google/android/gms/internal/ads/zzbbg;

    const-string p5, "native:view_create"

    .line 42
    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/internal/ads/zzbbh;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbg;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->W:Lcom/google/android/gms/internal/ads/zzbbg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->U:Lcom/google/android/gms/internal/ads/zzbbg;

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzce;->a()Lcom/google/android/gms/ads/internal/util/zzce;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzce;->b(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyj;->r()V

    return-void
.end method

.method static bridge synthetic d1(Lcom/google/android/gms/internal/ads/zzcfb;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->T:I

    return p0
.end method

.method static bridge synthetic g1(Lcom/google/android/gms/internal/ads/zzcfb;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->T:I

    return-void
.end method

.method static synthetic h1(Lcom/google/android/gms/internal/ads/zzcfb;)V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final declared-synchronized o1()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->w:Lcom/google/android/gms/internal/ads/zzeyc;

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->n0:Z

    if-nez v0, :cond_a

    goto :goto_14

    :cond_a
    const-string v0, "Disabling hardware acceleration on an overlay."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->q1()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_35

    monitor-exit p0

    return-void

    .line 4
    :cond_14
    :goto_14
    :try_start_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->H:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2b

    :cond_21
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->s1()V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_35

    monitor-exit p0

    return-void

    :cond_2b
    :goto_2b
    :try_start_2b
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->s1()V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized p1()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->d0:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->d0:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->q()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    monitor-exit p0

    return-void

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized q1()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->I:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->I:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final r1(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    if-eq v1, p1, :cond_b

    const-string p1, "0"

    goto :goto_d

    :cond_b
    const-string p1, "1"

    :goto_d
    const-string v1, "isVisible"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final declared-synchronized s1()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->I:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->I:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized t1(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string p1, "about:blank"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    .line 1
    :try_start_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    const-string v0, "AdWebViewImpl.loadUrlUnsafe"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl in destroy(). "

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final u1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->V:Lcom/google/android/gms/internal/ads/zzbbg;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbb;->a(Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzbbg;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized v1()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->j0:Ljava/util/Map;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzccu;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzccu;->c()V

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->j0:Ljava/util/Map;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method private final w1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->f()Lcom/google/android/gms/internal/ads/zzbaz;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbaz;->f(Lcom/google/android/gms/internal/ads/zzbbj;)Z

    :cond_16
    return-void
.end method

.method private final declared-synchronized x1()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->k()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->J:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_23

    if-nez v0, :cond_21

    :try_start_d
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->l1(Ljava/lang/Boolean;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_18} :catch_1a
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    monitor-exit p0

    return-void

    .line 4
    :catch_1a
    :try_start_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->l1(Ljava/lang/Boolean;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    monitor-exit p0

    return-void

    .line 5
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->e0:Lcom/google/android/gms/ads/internal/util/zzci;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzci;->b()V

    return-void
.end method

.method public final declared-synchronized B()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->H:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B0()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->E:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->Q:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_13

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdke;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdke;-><init>(Lcom/google/android/gms/internal/ads/zzdkg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    monitor-exit p0

    return-void

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C0(Lcom/google/android/gms/internal/ads/zzcfx;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final D(ZILjava/lang/String;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcep;->E0(ZILjava/lang/String;Z)V

    return-void
.end method

.method public final D0(ZILjava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcep;->H0(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final declared-synchronized E()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->C:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final E0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcep;->t0(Lcom/google/android/gms/ads/internal/overlay/zzc;Z)V

    return-void
.end method

.method public final declared-synchronized F(Lcom/google/android/gms/internal/ads/zzcfe;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->M:Lcom/google/android/gms/internal/ads/zzcfe;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->M:Lcom/google/android/gms/internal/ads/zzcfe;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final F0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->U:Lcom/google/android/gms/internal/ads/zzbbg;

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->V:Lcom/google/android/gms/internal/ads/zzbbg;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbb;->a(Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzbbg;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbj;->f()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->U:Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    const-string v2, "native:view_show"

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbbh;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbg;)V

    :cond_27
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->r:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final G(I)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized G0(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->K:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final H()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->o:Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfw;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final H0(Lcom/google/android/gms/internal/ads/zzate;)V
    .registers 2

    .line 1
    monitor-enter p0

    :try_start_1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->N:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->r1(Z)V

    return-void

    :catchall_a
    move-exception p1

    .line 3
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final I0(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcep;->c(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_7
    return-void
.end method

.method public final synthetic J()Lcom/google/android/gms/internal/ads/zzcfv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    return-object v0
.end method

.method public final J0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized K(Lcom/google/android/gms/internal/ads/zzbdk;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->P:Lcom/google/android/gms/internal/ads/zzbdk;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final K0()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final L()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final declared-synchronized L0()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->L:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized M()Lcom/google/android/gms/internal/ads/zzcfx;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized N(Z)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcep;->s()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->Za(ZZ)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->F:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized N0(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->c0:Lcom/google/android/gms/ads/internal/overlay/zzl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized O(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->b0:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final P()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final P0(I)V
    .registers 2

    return-void
.end method

.method public final Q()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->W:Lcom/google/android/gms/internal/ads/zzbbg;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbj;->f()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->W:Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    const-string v2, "native:view_load"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbbh;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbg;)V

    :cond_16
    return-void
.end method

.method public final declared-synchronized Q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result p3

    if-nez p3, :cond_63

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->N:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "12.4.51-000"
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6a

    :try_start_1d
    const-string v3, "version"

    .line 5
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk"

    const-string v3, "Google Mobile Ads"

    .line 6
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    .line 7
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_2e} :catch_49
    .catchall {:try_start_1d .. :try_end_2e} :catchall_6a

    :try_start_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<script>Object.defineProperty(window,\'MRAID_ENV\',{get:function(){return "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}});</script>"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :catch_49
    move-exception v0

    const-string v1, "Unable to build MRAID_ENV"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_50
    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 13
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzcfo;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 14
    invoke-super/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_6a

    monitor-exit p0

    return-void

    :cond_63
    :try_start_63
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_6a

    monitor-exit p0

    return-void

    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized R(Z)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    .line 1
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->bb(Z)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    monitor-exit p0

    return-void

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized S(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->C:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized S0(Z)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->H:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->H:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->o1()V

    if-eq p1, v0, :cond_38

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_24
    const-string v0, ""

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq v0, p1, :cond_31

    const-string p1, "default"

    goto :goto_33

    :cond_31
    const-string p1, "expanded"

    .line 5
    :goto_33
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqf;->g(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3a

    monitor-exit p0

    return-void

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final T()Lcom/google/android/gms/internal/ads/zzapw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->p:Lcom/google/android/gms/internal/ads/zzapw;

    return-object v0
.end method

.method public final declared-synchronized U()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->G:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final V()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public final declared-synchronized W(Lcom/google/android/gms/internal/ads/zzaus;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->R:Lcom/google/android/gms/internal/ads/zzaus;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final W0(ZIZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcep;->v0(ZIZ)V

    return-void
.end method

.method public final X(ZI)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->l0:Lcom/google/android/gms/internal/ads/zzawe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcey;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcey;-><init>(ZI)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawe;->b(Lcom/google/android/gms/internal/ads/zzawd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->l0:Lcom/google/android/gms/internal/ads/zzawe;

    const/16 p2, 0x2713

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzawe;->c(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final X0(I)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized Y()Lcom/google/android/gms/ads/internal/overlay/zzl;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->c0:Lcom/google/android/gms/ads/internal/overlay/zzl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Y0(ZJ)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x1

    if-eq v1, p1, :cond_c

    const-string p1, "0"

    goto :goto_e

    :cond_c
    const-string p1, "1"

    :goto_e
    const-string v1, "success"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized Z(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Z0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfb;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a0()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->K:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a1()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->q:Lcom/google/android/gms/internal/ads/zzbbt;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0

    .line 2
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbt;->a()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->x:Lcom/google/android/gms/internal/ads/zzeyf;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    monitor-exit p0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzccu;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->j0:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_8

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzccu;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b1(I)V
    .registers 5

    if-nez p1, :cond_13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->V:Lcom/google/android/gms/internal/ads/zzbbg;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbb;->a(Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzbbg;[Ljava/lang/String;)Z

    .line 3
    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->u1()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->a()Lcom/google/android/gms/internal/ads/zzbbj;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbj;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->r:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized c()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->b0:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcep;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->w1()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->e0:Lcom/google/android/gms/ads/internal/util/zzci;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzci;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->j()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    :cond_18
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->C:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->k0()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->R:Lcom/google/android/gms/internal/ads/zzaus;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->s:Lcom/google/android/gms/ads/internal/zzl;

    .line 6
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->G:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_69

    if-eqz v0, :cond_2f

    monitor-exit p0

    return-void

    .line 8
    :cond_2f
    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->A()Lcom/google/android/gms/internal/ads/zzccn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzccn;->j(Lcom/google/android/gms/internal/ads/zzcbj;)Z

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->v1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->G:Z

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->g9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->t1(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_69

    monitor-exit p0

    return-void

    :cond_5f
    :try_start_5f
    const-string v0, "Destroying the WebView immediately..."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->f0()V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_69

    monitor-exit p0

    return-void

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final e0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcep;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    :cond_7
    return-void
.end method

.method public final e1()Lcom/google/android/gms/internal/ads/zzcep;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    return-object v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_14

    .line 2
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1b

    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    return-void

    .line 3
    :cond_16
    :try_start_16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized f0()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->p1()V

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfa;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f1()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->J:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1f

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->G:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->k0()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->A()Lcom/google/android/gms/internal/ads/zzccn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzccn;->j(Lcom/google/android/gms/internal/ads/zzcbj;)Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->v1()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->p1()V

    .line 5
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1c
    move-exception v0

    .line 7
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    throw v0
.end method

.method public final g()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->o:Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfw;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final g0()Lcom/google/android/gms/internal/ads/zzeyf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->x:Lcom/google/android/gms/internal/ads/zzeyf;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/internal/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->t:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final h0()Landroid/webkit/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/zzbbg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->V:Lcom/google/android/gms/internal/ads/zzbbg;

    return-object v0
.end method

.method public final i0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcep;->l0(Z)V

    return-void
.end method

.method protected final declared-synchronized i1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfb;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j0(Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->w:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->x:Lcom/google/android/gms/internal/ads/zzeyf;

    return-void
.end method

.method protected final j1(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->e()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->f1()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->x1()V

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->f1()Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->i1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_20
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->k1(Ljava/lang/String;)V

    return-void

    :cond_28
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzbzg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->r:Lcom/google/android/gms/internal/ads/zzbzg;

    return-object v0
.end method

.method public final declared-synchronized k0()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->s:Lcom/google/android/gms/ads/internal/zzl;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzl;->k0()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized k1(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l()Lcom/google/android/gms/internal/ads/zzbbh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->a0:Lcom/google/android/gms/internal/ads/zzbbh;

    return-object v0
.end method

.method public final l0(Lcom/google/android/gms/ads/internal/util/zzbr;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    const/16 v7, 0xe

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcep;->u0(Lcom/google/android/gms/ads/internal/util/zzbr;Lcom/google/android/gms/internal/ads/zzeaf;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdk;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final l1(Ljava/lang/Boolean;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->J:Ljava/lang/Boolean;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyj;->v(Ljava/lang/Boolean;)V

    return-void

    :catchall_c
    move-exception p1

    .line 3
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_24

    if-nez v0, :cond_1d

    :try_start_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    const-string v0, "AdWebViewImpl.loadUrl"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_24

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()Lcom/google/android/gms/internal/ads/zzcay;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m0()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->u1()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->r:Lcom/google/android/gms/internal/ads/zzbzg;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final m1()Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    return v1

    .line 2
    :cond_13
    :goto_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->o:Lcom/google/android/gms/internal/ads/zzcfw;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfw;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_39

    goto :goto_59

    .line 6
    :cond_39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->n(Landroid/app/Activity;)[I

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzbyt;->B(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_5b

    :cond_59
    :goto_59
    move v6, v4

    move v7, v5

    .line 9
    :goto_5b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->g0:I

    if-ne v0, v4, :cond_6d

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->f0:I

    if-ne v3, v5, :cond_6d

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->h0:I

    if-ne v3, v6, :cond_6d

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->i0:I

    if-eq v3, v7, :cond_6c

    goto :goto_6d

    :cond_6c
    return v1

    :cond_6d
    :goto_6d
    if-ne v0, v4, :cond_73

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->f0:I

    if-eq v0, v5, :cond_74

    :cond_73
    const/4 v1, 0x1

    :cond_74
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->g0:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->f0:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzcfb;->h0:I

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzcfb;->i0:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbqf;

    const-string v0, ""

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    .line 10
    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->k0:Landroid/view/WindowManager;

    .line 11
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 12
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbqf;->e(IIIIFI)V

    return v1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->j1(Ljava/lang/String;)V

    return-void
.end method

.method public final n1()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final o(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final declared-synchronized o0()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->s:Lcom/google/android/gms/ads/internal/zzl;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzl;->o0()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->e0:Lcom/google/android/gms/ads/internal/util/zzci;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzci;->c()V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->N:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcep;->f()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->O:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->D()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->G()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->O:Z

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->m1()Z

    const/4 v0, 0x1

    .line 7
    :cond_30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->r1(Z)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 3

    .line 1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->e0:Lcom/google/android/gms/ads/internal/util/zzci;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzci;->d()V

    .line 2
    :cond_c
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_3a

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->f()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->D()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->G()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->O:Z

    .line 8
    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3f

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->r1(Z)V

    return-void

    :catchall_3f
    move-exception v0

    .line 10
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->q(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 3
    :cond_1a
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    .line 4
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_20
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2b

    .line 5
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    cmpl-float v0, v1, v3

    if-lez v0, :cond_35

    .line 6
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_35
    cmpg-float v0, v1, v3

    if-gez v0, :cond_41

    .line 7
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 p1, 0x0

    return p1

    .line 8
    :cond_41
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->m1()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->q0()Lcom/google/android/gms/ads/internal/overlay/zzl;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->l()V

    :cond_f
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1e5

    monitor-exit p0

    return-void

    .line 2
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1e0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->H:Z

    if-nez v0, :cond_1e0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1e0

    .line 3
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_1e5

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->j()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->s3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 10
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_1e5

    monitor-exit p0

    return-void

    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->r()Lcom/google/android/gms/internal/ads/zzcfe;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_59

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfe;->b()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    cmpl-float v2, v0, v2

    if-nez v2, :cond_63

    .line 12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_1e5

    monitor-exit p0

    return-void

    .line 13
    :cond_63
    :try_start_63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v2, p2

    mul-float v2, v2, v0

    int-to-float v3, p1

    div-float/2addr v3, v0

    float-to-int v3, v3

    if-nez p2, :cond_7d

    if-eqz v3, :cond_7c

    int-to-float p2, v3

    mul-float p2, p2, v0

    float-to-int p2, p2

    move v1, p1

    move p1, v3

    goto :goto_8c

    :cond_7c
    const/4 p2, 0x0

    :cond_7d
    float-to-int v2, v2

    if-nez p1, :cond_89

    if-eqz v2, :cond_8a

    int-to-float p1, v2

    div-float/2addr p1, v0

    float-to-int v3, p1

    move p1, p2

    move p2, v2

    move v1, p2

    goto :goto_8c

    :cond_89
    move v1, p1

    :cond_8a
    move p1, p2

    move p2, v2

    .line 15
    :goto_8c
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 16
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 17
    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_97
    .catchall {:try_start_63 .. :try_end_97} :catchall_1e5

    monitor-exit p0

    return-void

    :cond_99
    :try_start_99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->g()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->y3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 22
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_b6
    .catchall {:try_start_99 .. :try_end_b6} :catchall_1e5

    monitor-exit p0

    return-void

    :cond_b8
    :try_start_b8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcez;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcez;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    const-string v1, "/contentHeight"

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->j1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->T:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d9

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_dd

    .line 27
    :cond_d9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 28
    :goto_dd
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_e0
    .catchall {:try_start_b8 .. :try_end_e0} :catchall_1e5

    monitor-exit p0

    return-void

    .line 29
    :cond_e2
    :try_start_e2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->i()Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->u:Landroid/util/DisplayMetrics;

    .line 31
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_f3
    .catchall {:try_start_e2 .. :try_end_f3} :catchall_1e5

    monitor-exit p0

    return-void

    .line 32
    :cond_f5
    :try_start_f5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 35
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const v3, 0x7fffffff

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_115

    if-ne v0, v4, :cond_111

    goto :goto_115

    :cond_111
    const v0, 0x7fffffff

    goto :goto_116

    :cond_115
    :goto_115
    move v0, p1

    :goto_116
    if-eq v2, v5, :cond_11a

    if-ne v2, v4, :cond_11b

    :cond_11a
    move v3, p2

    :cond_11b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 36
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzcfx;->c:I

    const/4 v5, 0x1

    if-gt v4, v0, :cond_129

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcfx;->b:I

    if-le v2, v3, :cond_127

    goto :goto_129

    :cond_127
    const/4 v2, 0x0

    goto :goto_12a

    :cond_129
    :goto_129
    const/4 v2, 0x1

    .line 37
    :goto_12a
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->W4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_158

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 40
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzcfx;->c:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcfb;->v:F

    div-float/2addr v6, v7

    int-to-float v0, v0

    div-float/2addr v0, v7

    cmpl-float v0, v6, v0

    if-gtz v0, :cond_156

    iget v0, v4, Lcom/google/android/gms/internal/ads/zzcfx;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v3, v3

    div-float/2addr v3, v7

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_156

    const/4 v0, 0x1

    goto :goto_157

    :cond_156
    const/4 v0, 0x0

    :goto_157
    and-int/2addr v2, v0

    :cond_158
    const/16 v0, 0x8

    if-eqz v2, :cond_1bf

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 41
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzcfx;->c:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->v:F

    div-float/2addr v3, v4

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcfx;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float p1, p1

    div-float/2addr p1, v4

    int-to-float p2, p2

    div-float/2addr p2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough space to show ad. Needs "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1ab

    const/4 p1, 0x4

    .line 44
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 45
    :cond_1ab
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->y:Z

    if-nez p1, :cond_1bd

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->l0:Lcom/google/android/gms/internal/ads/zzawe;

    const/16 p2, 0x2711

    .line 46
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzawe;->c(I)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->y:Z
    :try_end_1bb
    .catchall {:try_start_f5 .. :try_end_1bb} :catchall_1e5

    monitor-exit p0

    return-void

    :cond_1bd
    monitor-exit p0

    return-void

    .line 47
    :cond_1bf
    :try_start_1bf
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1c8

    .line 48
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1c8
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->z:Z

    if-nez p1, :cond_1d5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->l0:Lcom/google/android/gms/internal/ads/zzawe;

    const/16 p2, 0x2712

    .line 49
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzawe;->c(I)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzcfb;->z:Z

    :cond_1d5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->D:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 50
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcfx;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcfx;->b:I

    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_1de
    .catchall {:try_start_1bf .. :try_end_1de} :catchall_1e5

    monitor-exit p0

    return-void

    .line 51
    :cond_1e0
    :goto_1e0
    :try_start_1e0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_1e5

    monitor-exit p0

    return-void

    :catchall_1e5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->e()Z

    move-result v0

    if-nez v0, :cond_1d

    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->P:Lcom/google/android/gms/internal/ads/zzbdk;

    if-eqz v0, :cond_18

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->b(Landroid/view/MotionEvent;)V

    .line 3
    :cond_18
    monitor-exit p0

    goto :goto_2b

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw p1

    .line 4
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->p:Lcom/google/android/gms/internal/ads/zzapw;

    if-eqz v0, :cond_24

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzapw;->d(Landroid/view/MotionEvent;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->q:Lcom/google/android/gms/internal/ads/zzbbt;

    if-eqz v0, :cond_2b

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbt;->b(Landroid/view/MotionEvent;)V

    .line 7
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_33
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->p()V

    :cond_7
    return-void
.end method

.method public final declared-synchronized p0(Z)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->S:I

    const/4 v1, 0x1

    if-eq v1, p1, :cond_7

    const/4 v1, -0x1

    :cond_7
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->S:I

    if-gtz v0, :cond_15

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->f0()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final q()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->q()V

    :cond_7
    return-void
.end method

.method public final declared-synchronized q0()Lcom/google/android/gms/ads/internal/overlay/zzl;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/internal/ads/zzcfe;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->M:Lcom/google/android/gms/internal/ads/zzcfe;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Lcom/google/android/gms/internal/ads/zzbdk;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->P:Lcom/google/android/gms/internal/ads/zzbdk;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s0(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->o:Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfw;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->e0:Lcom/google/android/gms/ads/internal/util/zzci;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->o:Lcom/google/android/gms/internal/ads/zzcfw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfw;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzci;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_b

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcep;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    :cond_b
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized t()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->S:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public final u()Lcom/google/android/gms/internal/ads/zzeyc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->w:Lcom/google/android/gms/internal/ads/zzeyc;

    return-object v0
.end method

.method public final u0(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcep;->a(Z)V

    return-void
.end method

.method public final v()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->q0()Lcom/google/android/gms/ads/internal/overlay/zzl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->d()V

    :cond_9
    return-void
.end method

.method public final v0(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->o(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_c

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfb;->w(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_c
    const-string p1, "Could not convert parameters to JSON."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Dispatching AFMA event: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->j1(Ljava/lang/String;)V

    return-void
.end method

.method public final w0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->A:Lcom/google/android/gms/internal/ads/zzcep;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->w0()V

    :cond_7
    return-void
.end method

.method public final declared-synchronized x()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->F:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x0(I)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->B:Lcom/google/android/gms/ads/internal/overlay/zzl;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->ab(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzccu;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->j0:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->j0:Ljava/util/Map;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->j0:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y0(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->Q:Lcom/google/android/gms/internal/ads/zzbdi;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized z()Lcom/google/android/gms/internal/ads/zzaus;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfb;->R:Lcom/google/android/gms/internal/ads/zzaus;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.ads.internal.util.zzm (com.google.android.gms.ads.internal.util.zzm)
.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebSettings;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebSettings;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzm;->a:Landroid/webkit/WebSettings;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzm;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzm;->a:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzm;->b:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    const-string v2, "com.google.android.gms.ads.db"

    .line 1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->E0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x64

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 11
    :cond_3b
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcey (com.google.android.gms.internal.ads.zzcey)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawd;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcey;->a:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcey;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaxt;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcey;->a:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcey;->b:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcfb;->m0:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazz;->I()Lcom/google/android/gms/internal/ads/zzazy;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazy;->q()Z

    move-result v3

    if-eq v3, v0, :cond_13

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzazy;->o(Z)Lcom/google/android/gms/internal/ads/zzazy;

    .line 4
    :cond_13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzazy;->p(I)Lcom/google/android/gms/internal/ads/zzazy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazz;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxt;->y(Lcom/google/android/gms/internal/ads/zzazz;)Lcom/google/android/gms/internal/ads/zzaxt;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdke (com.google.android.gms.internal.ads.zzdke)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdkg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdkg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdke;->o:Lcom/google/android/gms/internal/ads/zzdkg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdke;->o:Lcom/google/android/gms/internal/ads/zzdkg;

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkg;->d()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
