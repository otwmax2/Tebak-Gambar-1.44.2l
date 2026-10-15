###### Class com.vungle.mediation.VungleManager (com.vungle.mediation.VungleManager)
.class public Lcom/vungle/mediation/VungleManager;
.super Ljava/lang/Object;
.source "VungleManager.java"


# static fields
.field private static final b:Ljava/lang/String; = "VungleManager"

.field private static c:Lcom/vungle/mediation/VungleManager;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/ads/mediation/vungle/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private b()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/mediation/vungle/a;

    if-eqz v2, :cond_f

    .line 3
    invoke-virtual {v2}, Lcom/google/ads/mediation/vungle/a;->d()Lcom/vungle/mediation/VungleBannerAdapter;

    move-result-object v3

    if-nez v3, :cond_f

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/vungle/mediation/VungleManager;->removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    goto :goto_f

    :cond_2f
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vungle/mediation/VungleManager;
    .registers 2

    const-class v0, Lcom/vungle/mediation/VungleManager;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/vungle/mediation/VungleManager;->c:Lcom/vungle/mediation/VungleManager;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/vungle/mediation/VungleManager;

    invoke-direct {v1}, Lcom/vungle/mediation/VungleManager;-><init>()V

    sput-object v1, Lcom/vungle/mediation/VungleManager;->c:Lcom/vungle/mediation/VungleManager;

    .line 3
    :cond_e
    sget-object v1, Lcom/vungle/mediation/VungleManager;->c:Lcom/vungle/mediation/VungleManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/mediation/VungleManager;->b()V

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/vungle/a;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_80

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/google/ads/mediation/vungle/a;->d()Lcom/vungle/mediation/VungleBannerAdapter;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 5
    iget-object p2, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_80

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Lcom/google/ads/mediation/vungle/a;->d()Lcom/vungle/mediation/VungleBannerAdapter;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->getUniqueRequestId()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v2, Lcom/vungle/mediation/VungleManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeUniqueId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ###  RequestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez v0, :cond_62

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ad already loaded for placement ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and cannot determine if this is a refresh. Set Vungle extras when making an ad request to support refresh on Vungle banner ads."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_1e .. :try_end_60} :catchall_80

    .line 11
    monitor-exit p0

    return v3

    .line 12
    :cond_62
    :try_start_62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7e

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ad already loaded for placement ID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_80

    .line 14
    monitor-exit p0

    return v3

    .line 15
    :cond_7e
    monitor-exit p0

    return v1

    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/vungle/warren/Vungle;->getValidPlacements()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method d(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/vungle/a;

    invoke-virtual {p0, p1, v0}, Lcom/vungle/mediation/VungleManager;->removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/vungle/mediation/VungleManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerBannerAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; size="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method public findPlacement(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_f

    const-string v0, "playPlacement"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p2, :cond_27

    const-string v0, "placementID"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz p1, :cond_23

    .line 4
    sget-object p1, Lcom/vungle/mediation/VungleManager;->b:Ljava/lang/String;

    const-string v1, "\'placementID\' had a value in both serverParameters and networkExtras. Used one from serverParameters"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_27
    if-nez p1, :cond_30

    .line 6
    sget-object p2, Lcom/vungle/mediation/VungleManager;->b:Ljava/lang/String;

    const-string v0, "placementID not provided from serverParameters."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-object p1
.end method

.method public getVungleBannerAd(Ljava/lang/String;)Lcom/google/ads/mediation/vungle/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/mediation/vungle/a;

    return-object p1
.end method

.method public removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to removeActiveBannerAd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    if-eqz p2, :cond_48

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeActiveBannerAd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/mediation/VungleManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p2}, Lcom/google/ads/mediation/vungle/a;->c()V

    .line 5
    invoke-virtual {p2}, Lcom/google/ads/mediation/vungle/a;->b()V

    :cond_48
    return-void
.end method
