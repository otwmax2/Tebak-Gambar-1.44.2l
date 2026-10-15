###### Class x0.k (x0.k)
.class public Lx0/k;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.java"

# interfaces
.implements Lb1/j;
.implements Lb1/i;


# static fields
.field static final w:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lx0/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile o:Ljava/lang/String;

.field final p:[J

.field final q:[D

.field final r:[Ljava/lang/String;

.field final s:[[B

.field private final t:[I

.field final u:I

.field v:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lx0/k;->w:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lx0/k;->u:I

    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lx0/k;->t:[I

    .line 4
    new-array v0, p1, [J

    iput-object v0, p0, Lx0/k;->p:[J

    .line 5
    new-array v0, p1, [D

    iput-object v0, p0, Lx0/k;->q:[D

    .line 6
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lx0/k;->r:[Ljava/lang/String;

    .line 7
    new-array p1, p1, [[B

    iput-object p1, p0, Lx0/k;->s:[[B

    return-void
.end method

.method public static d(Ljava/lang/String;I)Lx0/k;
    .registers 5

    .line 1
    sget-object v0, Lx0/k;->w:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/k;

    .line 5
    invoke-virtual {v1, p0, p1}, Lx0/k;->e(Ljava/lang/String;I)V

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_29

    .line 8
    new-instance v0, Lx0/k;

    invoke-direct {v0, p1}, Lx0/k;-><init>(I)V

    .line 9
    invoke-virtual {v0, p0, p1}, Lx0/k;->e(Ljava/lang/String;I)V

    return-object v0

    :catchall_29
    move-exception p0

    .line 10
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private static f()V
    .registers 3

    .line 1
    sget-object v0, Lx0/k;->w:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_24

    .line 2
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_24

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_18

    :cond_24
    return-void
.end method


# virtual methods
.method public D1(I[B)V
    .registers 5

    .line 1
    iget-object v0, p0, Lx0/k;->t:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Lx0/k;->s:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public L0(ID)V
    .registers 6

    .line 1
    iget-object v0, p0, Lx0/k;->t:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Lx0/k;->q:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx0/k;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lb1/i;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_2
    iget v2, p0, Lx0/k;->v:I

    if-gt v1, v2, :cond_3f

    .line 2
    iget-object v2, p0, Lx0/k;->t:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_39

    const/4 v3, 0x2

    if-eq v2, v3, :cond_31

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    const/4 v3, 0x4

    if-eq v2, v3, :cond_21

    const/4 v3, 0x5

    if-eq v2, v3, :cond_19

    goto :goto_3c

    .line 3
    :cond_19
    iget-object v2, p0, Lx0/k;->s:[[B

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lb1/i;->D1(I[B)V

    goto :goto_3c

    .line 4
    :cond_21
    iget-object v2, p0, Lx0/k;->r:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lb1/i;->k0(ILjava/lang/String;)V

    goto :goto_3c

    .line 5
    :cond_29
    iget-object v2, p0, Lx0/k;->q:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lb1/i;->L0(ID)V

    goto :goto_3c

    .line 6
    :cond_31
    iget-object v2, p0, Lx0/k;->p:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lb1/i;->s1(IJ)V

    goto :goto_3c

    .line 7
    :cond_39
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3f
    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method e(Ljava/lang/String;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lx0/k;->o:Ljava/lang/String;

    .line 2
    iput p2, p0, Lx0/k;->v:I

    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    sget-object v0, Lx0/k;->w:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_3
    iget v1, p0, Lx0/k;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lx0/k;->f()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public k0(ILjava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lx0/k;->t:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Lx0/k;->r:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public s1(IJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lx0/k;->t:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 2
    iget-object v0, p0, Lx0/k;->p:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public z2(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx0/k;->t:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method
