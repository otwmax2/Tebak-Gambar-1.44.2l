###### Class x2.a (x2.a)
.class public final Lx2/a;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static final b:Lx2/a;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx2/a;

    invoke-direct {v0}, Lx2/a;-><init>()V

    sput-object v0, Lx2/a;->b:Lx2/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lx2/h;->d(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lx2/a;->a:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lx2/a;
    .registers 1

    .line 1
    sget-object v0, Lx2/a;->b:Lx2/a;

    return-object v0
.end method


# virtual methods
.method public b()[B
    .registers 4

    .line 1
    iget-object v0, p0, Lx2/a;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lx2/a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_23

    if-nez v1, :cond_22

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    const-string v0, "ByteArrayPool"

    const/4 v2, 0x3

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "ByteArrayPool"

    const-string v2, "Created temp bytes"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-object v1

    :catchall_23
    move-exception v1

    .line 6
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public c([B)Z
    .registers 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_7

    return v1

    .line 2
    :cond_7
    iget-object v0, p0, Lx2/a;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 3
    :try_start_a
    iget-object v2, p0, Lx2/a;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1a

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lx2/a;->a:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    :cond_1a
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw p1
.end method
