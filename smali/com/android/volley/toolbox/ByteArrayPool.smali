###### Class com.android.volley.toolbox.ByteArrayPool (com.android.volley.toolbox.ByteArrayPool)
.class public Lcom/android/volley/toolbox/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field protected static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool$1;

    invoke-direct {v0}, Lcom/android/volley/toolbox/ByteArrayPool$1;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ByteArrayPool;->e:Ljava/util/Comparator;

    return-void
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    .line 1
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I

    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->d:I

    if-le v0, v1, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    goto :goto_1

    .line 5
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method


# virtual methods
.method public declared-synchronized a(I)[B
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 2
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3
    array-length v2, v1

    if-lt v2, p1, :cond_27

    .line 4
    iget p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I

    array-length v2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I

    .line 5
    iget-object p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_2e

    .line 7
    monitor-exit p0

    return-object v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8
    :cond_2a
    :try_start_2a
    new-array p1, p1, [B
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method public declared-synchronized b([B)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_2e

    .line 1
    :try_start_3
    array-length v0, p1

    iget v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->d:I

    if-le v0, v1, :cond_9

    goto :goto_2e

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->b:Ljava/util/List;

    sget-object v1, Lcom/android/volley/toolbox/ByteArrayPool;->e:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1b

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_1b
    iget-object v1, p0, Lcom/android/volley/toolbox/ByteArrayPool;->b:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/volley/toolbox/ByteArrayPool;->c:I

    .line 6
    invoke-direct {p0}, Lcom/android/volley/toolbox/ByteArrayPool;->c()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 7
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 8
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void
.end method

###### Class com.android.volley.toolbox.ByteArrayPool.AnonymousClass1 (com.android.volley.toolbox.ByteArrayPool$1)
.class Lcom/android/volley/toolbox/ByteArrayPool$1;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B[B)I
    .registers 3

    .line 1
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/volley/toolbox/ByteArrayPool$1;->a([B[B)I

    move-result p1

    return p1
.end method
