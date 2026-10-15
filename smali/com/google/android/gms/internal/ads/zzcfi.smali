###### Class com.google.android.gms.internal.ads.zzcfi (com.google.android.gms.internal.ads.zzcfi)
.class public final Lcom/google/android/gms/internal/ads/zzcfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcfj;

.field private final b:Lcom/google/android/gms/internal/ads/zzcfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfj;Lcom/google/android/gms/internal/ads/zzcfh;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfi;->b:Lcom/google/android/gms/internal/ads/zzcfh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->b:Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcfh;->a:Lcom/google/android/gms/internal/ads/zzcei;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->e1()Lcom/google/android/gms/internal/ads/zzcep;

    move-result-object v0

    if-nez v0, :cond_16

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfv;->R0(Landroid/net/Uri;)V

    return-void
.end method

.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_e

    const-string p1, "Click string is empty, not proceeding."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v1

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfq;->T()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v2

    if-nez v2, :cond_1c

    const-string p1, "Signal utils is empty, ignoring."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v1

    :cond_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v2

    if-nez v2, :cond_28

    const-string p1, "Signals object is empty, ignoring."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_28
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_34

    const-string p1, "Context is null, ignoring."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v1

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfj;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfj;->g()Landroid/app/Activity;

    move-result-object v3

    check-cast v1, Landroid/view/View;

    .line 8
    invoke-interface {v2, v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzaps;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewSignals()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfq;->T()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_10

    const-string v0, "Signal utils is empty, ignoring."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v2

    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapw;->c()Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string v0, "Signals object is empty, ignoring."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_1c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_28

    const-string v0, "Context is null, ignoring."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    return-object v2

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfj;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfi;->a:Lcom/google/android/gms/internal/ads/zzcfj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfj;->g()Landroid/app/Activity;

    move-result-object v3

    check-cast v2, Landroid/view/View;

    .line 6
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaps;->g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notify(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "URL is empty, ignoring message"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_c
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfg;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcfg (com.google.android.gms.internal.ads.zzcfg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcfi;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfi;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->o:Lcom/google/android/gms/internal/ads/zzcfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfg;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfg;->o:Lcom/google/android/gms/internal/ads/zzcfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfg;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfi;->a(Ljava/lang/String;)V

    return-void
.end method
