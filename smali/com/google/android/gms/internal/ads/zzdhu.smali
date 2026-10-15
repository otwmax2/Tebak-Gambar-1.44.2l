###### Class com.google.android.gms.internal.ads.zzdhu (com.google.android.gms.internal.ads.zzdhu)
.class public final Lcom/google/android/gms/internal/ads/zzdhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdmq;

.field private final b:Lcom/google/android/gms/internal/ads/zzdlf;

.field private final c:Lcom/google/android/gms/internal/ads/zzcnq;

.field private final d:Lcom/google/android/gms/internal/ads/zzdgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzcnq;Lcom/google/android/gms/internal/ads/zzdgq;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->a:Lcom/google/android/gms/internal/ads/zzdmq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhu;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhu;->c:Lcom/google/android/gms/internal/ads/zzcnq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhu;->d:Lcom/google/android/gms/internal/ads/zzdgq;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcet;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhu;->a:Lcom/google/android/gms/internal/ads/zzdmq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->X3()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdmq;->a(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdho;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdho;-><init>(Lcom/google/android/gms/internal/ads/zzdhu;)V

    const-string v2, "/sendMessageToSdk"

    .line 3
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcei;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdhp;-><init>(Lcom/google/android/gms/internal/ads/zzdhu;)V

    const-string v2, "/adMuted"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcei;->c0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdhq;-><init>(Lcom/google/android/gms/internal/ads/zzdhu;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdlf;->j(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdhr;-><init>(Lcom/google/android/gms/internal/ads/zzdhu;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdlf;->j(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdhs;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdhs;-><init>(Lcom/google/android/gms/internal/ads/zzdhu;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdlf;->j(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    .line 8
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->d:Lcom/google/android/gms/internal/ads/zzdgq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdgq;->e()V

    return-void
.end method

.method final synthetic d(Ljava/util/Map;Z)V
    .registers 5

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v0, "sendMessageToNativeJs"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdlf;->g(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 3

    const-string p2, "Showing native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->c:Lcom/google/android/gms/internal/ads/zzcnq;

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcnq;->d(Z)V

    return-void
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 3

    const-string p2, "Hiding native ads overlay."

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->L()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhu;->c:Lcom/google/android/gms/internal/ads/zzcnq;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcnq;->d(Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdho (com.google.android.gms.internal.ads.zzdho)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdhu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdho;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdhu;->b(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhp (com.google.android.gms.internal.ads.zzdhp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdhu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhp;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhp;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdhu;->c(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhq (com.google.android.gms.internal.ads.zzdhq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdhu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhq;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhq;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcei;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcei;->J()Lcom/google/android/gms/internal/ads/zzcfv;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdht;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzdht;-><init>(Lcom/google/android/gms/internal/ads/zzdhu;Ljava/util/Map;)V

    .line 2
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzcfv;->n0(Lcom/google/android/gms/internal/ads/zzcft;)V

    const-string p1, "overlayHtml"

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const-string p1, "baseUrl"

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "text/html"

    const-string p2, "UTF-8"

    .line 6
    invoke-interface {v1, v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcei;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    .line 7
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcei;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdht (com.google.android.gms.internal.ads.zzdht)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcft;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzdhu;

.field public final synthetic p:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhu;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdht;->o:Lcom/google/android/gms/internal/ads/zzdhu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdht;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final S(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdht;->o:Lcom/google/android/gms/internal/ads/zzdhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdht;->p:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdhu;->d(Ljava/util/Map;Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhr (com.google.android.gms.internal.ads.zzdhr)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdhu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhr;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhr;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdhu;->e(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhs (com.google.android.gms.internal.ads.zzdhs)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdhu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhs;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhs;->a:Lcom/google/android/gms/internal/ads/zzdhu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdhu;->f(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V

    return-void
.end method
