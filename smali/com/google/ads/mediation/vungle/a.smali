###### Class com.google.ads.mediation.vungle.a (com.google.ads.mediation.vungle.a)
.class public Lcom/google/ads/mediation/vungle/a;
.super Ljava/lang/Object;
.source "VungleBannerAd.java"


# static fields
.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/mediation/VungleBannerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Lcom/vungle/warren/VungleBanner;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vungle/mediation/VungleBannerAdapter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/a;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/ads/mediation/vungle/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/mediation/VungleBannerAdapter;

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-virtual {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->getAdLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 3
    :cond_12
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_21

    .line 4
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_21
    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    if-eqz v0, :cond_28

    .line 2
    sget-object v0, Lcom/google/ads/mediation/vungle/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vungle banner adapter cleanUp: destroyAd # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleBanner;->destroyAd()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    :cond_28
    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    return-void
.end method

.method public d()Lcom/vungle/mediation/VungleBannerAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/mediation/VungleBannerAdapter;

    return-object v0
.end method

.method public e()Lcom/vungle/warren/VungleBanner;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    return-object v0
.end method

.method public f(Lcom/vungle/warren/VungleBanner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/a;->c:Lcom/vungle/warren/VungleBanner;

    return-void
.end method
