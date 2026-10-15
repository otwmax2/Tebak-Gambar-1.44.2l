###### Class com.vungle.warren.utility.CollectionsConcurrencyUtil (com.vungle.warren.utility.CollectionsConcurrencyUtil)
.class public Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;
.super Ljava/lang/Object;
.source "CollectionsConcurrencyUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToSet(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method
