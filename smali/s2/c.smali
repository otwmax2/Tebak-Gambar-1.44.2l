###### Class s2.c (s2.c)
.class public Ls2/c;
.super Ljava/lang/Object;
.source "DataLoadProviderRegistry.java"


# static fields
.field private static final b:Lx2/g;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lx2/g;",
            "Ls2/b<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx2/g;

    invoke-direct {v0}, Lx2/g;-><init>()V

    sput-object v0, Ls2/c;->b:Lx2/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls2/c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Ls2/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls2/c;->b:Lx2/g;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {v0, p1, p2}, Lx2/g;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3
    iget-object p1, p0, Ls2/c;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls2/b;

    .line 4
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    if-nez p1, :cond_15

    .line 5
    invoke-static {}, Ls2/d;->c()Ls2/b;

    move-result-object p1

    :cond_15
    return-object p1

    :catchall_16
    move-exception p1

    .line 6
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ls2/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ls2/b<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/c;->a:Ljava/util/Map;

    new-instance v1, Lx2/g;

    invoke-direct {v1, p1, p2}, Lx2/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
