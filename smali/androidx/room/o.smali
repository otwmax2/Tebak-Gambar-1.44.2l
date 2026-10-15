###### Class androidx.room.o (androidx.room.o)
.class public Landroidx/room/o;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/o$b;,
        Landroidx/room/o$c;,
        Landroidx/room/o$d;
    }
.end annotation


# static fields
.field private static final n:[Ljava/lang/String;


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Landroidx/room/a;

.field final e:Landroidx/room/h0;

.field f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile g:Z

.field volatile h:Lb1/k;

.field private i:Landroidx/room/o$b;

.field private final j:Landroidx/room/m;

.field final k:Lk/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b<",
            "Landroidx/room/o$c;",
            "Landroidx/room/o$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/room/p;

.field m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/o;->n:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/h0;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/h0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/room/o;->d:Landroidx/room/a;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-boolean v1, p0, Landroidx/room/o;->g:Z

    .line 5
    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Landroidx/room/o;->k:Lk/b;

    .line 6
    new-instance v0, Landroidx/room/o$a;

    invoke-direct {v0, p0}, Landroidx/room/o$a;-><init>(Landroidx/room/o;)V

    iput-object v0, p0, Landroidx/room/o;->m:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    .line 8
    new-instance v0, Landroidx/room/o$b;

    array-length v2, p4

    invoke-direct {v0, v2}, Landroidx/room/o$b;-><init>(I)V

    iput-object v0, p0, Landroidx/room/o;->i:Landroidx/room/o$b;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/o;->a:Ljava/util/HashMap;

    .line 10
    iput-object p3, p0, Landroidx/room/o;->c:Ljava/util/Map;

    .line 11
    new-instance p3, Landroidx/room/m;

    invoke-direct {p3, p1}, Landroidx/room/m;-><init>(Landroidx/room/h0;)V

    iput-object p3, p0, Landroidx/room/o;->j:Landroidx/room/m;

    .line 12
    array-length p1, p4

    .line 13
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/o;->b:[Ljava/lang/String;

    :goto_3d
    if-ge v1, p1, :cond_6a

    .line 14
    aget-object p3, p4, v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 15
    iget-object v2, p0, Landroidx/room/o;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    aget-object v2, p4, v1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_63

    .line 17
    iget-object p3, p0, Landroidx/room/o;->b:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_67

    .line 18
    :cond_63
    iget-object v0, p0, Landroidx/room/o;->b:[Ljava/lang/String;

    aput-object p3, v0, v1

    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 19
    :cond_6a
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_72
    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 21
    iget-object v0, p0, Landroidx/room/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object p4, p0, Landroidx/room/o;->a:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_a8
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "`"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "room_table_modification_trigger_"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static c(Lb1/g;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 2
    invoke-interface {p0}, Lb1/g;->h3()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-interface {p0}, Lb1/g;->z1()V

    goto :goto_13

    .line 4
    :cond_10
    invoke-interface {p0}, Lb1/g;->V()V

    :goto_13
    return-void
.end method

.method private j([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2b

    aget-object v3, p1, v2

    .line 3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Landroidx/room/o;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 5
    iget-object v3, p0, Landroidx/room/o;->c:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_28

    .line 6
    :cond_25
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7
    :cond_2b
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private m(Lb1/g;I)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/room/o;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v2, Landroidx/room/o;->n:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v3, :cond_8d

    aget-object v6, v2, v5

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1, v0, v6}, Landroidx/room/o;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, " AFTER "

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ON `"

    .line 10
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "` BEGIN UPDATE "

    .line 12
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "room_table_modification_log"

    .line 13
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " SET "

    .line 14
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "invalidated"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 1"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " WHERE "

    .line 15
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "table_id"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " AND "

    .line 16
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = 0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; END"

    .line 17
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lb1/g;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_8d
    return-void
.end method

.method private n(Lb1/g;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/room/o;->b:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v1, Landroidx/room/o;->n:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_27

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v0, p2, v5}, Landroidx/room/o;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lb1/g;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    return-void
.end method


# virtual methods
.method public a(Landroidx/room/o$c;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/room/o$c;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/o;->j([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v1, v1, [I

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_41

    .line 4
    iget-object v4, p0, Landroidx/room/o;->a:Ljava/util/HashMap;

    aget-object v5, v0, v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_28

    .line 5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 6
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no table with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_41
    new-instance v2, Landroidx/room/o$d;

    invoke-direct {v2, p1, v1, v0}, Landroidx/room/o$d;-><init>(Landroidx/room/o$c;[I[Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroidx/room/o;->k:Lk/b;

    monitor-enter v0

    .line 9
    :try_start_49
    iget-object v3, p0, Landroidx/room/o;->k:Lk/b;

    invoke-virtual {v3, p1, v2}, Lk/b;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/o$d;

    .line 10
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_60

    if-nez p1, :cond_5f

    .line 11
    iget-object p1, p0, Landroidx/room/o;->i:Landroidx/room/o$b;

    invoke-virtual {p1, v1}, Landroidx/room/o$b;->b([I)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 12
    invoke-virtual {p0}, Landroidx/room/o;->o()V

    :cond_5f
    return-void

    :catchall_60
    move-exception p1

    .line 13
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    goto :goto_64

    :goto_63
    throw p1

    :goto_64
    goto :goto_63
.end method

.method d()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2
    :cond_a
    iget-boolean v0, p0, Landroidx/room/o;->g:Z

    if-nez v0, :cond_17

    .line 3
    iget-object v0, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->l()Lb1/h;

    move-result-object v0

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    .line 4
    :cond_17
    iget-boolean v0, p0, Landroidx/room/o;->g:Z

    if-nez v0, :cond_23

    const-string v0, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method e(Lb1/g;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/room/o;->g:Z

    if-eqz v0, :cond_e

    const-string p1, "ROOM"

    const-string v0, "Invalidation tracker is initialized twice :/."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p0

    return-void

    :cond_e
    const-string v0, "PRAGMA temp_store = MEMORY;"

    .line 5
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    .line 6
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 7
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Landroidx/room/o;->p(Lb1/g;)V

    const-string v0, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 9
    invoke-interface {p1, v0}, Lb1/g;->w0(Ljava/lang/String;)Lb1/k;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/o;->h:Lb1/k;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/room/o;->g:Z

    .line 11
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public varargs f([Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/room/o;->k:Lk/b;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/room/o;->k:Lk/b;

    invoke-virtual {v1}, Lk/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/o$c;

    invoke-virtual {v3}, Landroidx/room/o$c;->a()Z

    move-result v3

    if-nez v3, :cond_9

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/o$d;

    invoke-virtual {v2, p1}, Landroidx/room/o$d;->b([Ljava/lang/String;)V

    goto :goto_9

    .line 5
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method g()V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-boolean v0, p0, Landroidx/room/o;->g:Z

    .line 3
    iget-object v0, p0, Landroidx/room/o;->i:Landroidx/room/o$b;

    invoke-virtual {v0}, Landroidx/room/o$b;->e()V

    .line 4
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public h()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Landroidx/room/a;->e()Lb1/g;

    .line 4
    :cond_11
    iget-object v0, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->m()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/o;->m:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    return-void
.end method

.method public i(Landroidx/room/o$c;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/o;->k:Lk/b;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Landroidx/room/o;->k:Lk/b;

    invoke-virtual {v1, p1}, Lk/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/o$d;

    .line 3
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    if-eqz p1, :cond_1b

    .line 4
    iget-object v0, p0, Landroidx/room/o;->i:Landroidx/room/o$b;

    iget-object p1, p1, Landroidx/room/o$d;->a:[I

    invoke-virtual {v0, p1}, Landroidx/room/o$b;->c([I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 5
    invoke-virtual {p0}, Landroidx/room/o;->o()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception p1

    .line 6
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method k(Landroidx/room/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/room/o;->d:Landroidx/room/a;

    .line 2
    new-instance v0, Landroidx/room/n;

    invoke-direct {v0, p0}, Landroidx/room/n;-><init>(Landroidx/room/o;)V

    invoke-virtual {p1, v0}, Landroidx/room/a;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method l(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroidx/room/p;

    iget-object v1, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    .line 2
    invoke-virtual {v1}, Landroidx/room/h0;->m()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, p2, p0, v1}, Landroidx/room/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/o;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/o;->l:Landroidx/room/p;

    return-void
.end method

.method o()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->v()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->l()Lb1/h;

    move-result-object v0

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/o;->p(Lb1/g;)V

    return-void
.end method

.method p(Lb1/g;)V
    .registers 8

    .line 1
    invoke-interface {p1}, Lb1/g;->O2()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    :goto_7
    :try_start_7
    iget-object v0, p0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->k()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_10} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_10} :catch_4f

    .line 4
    :try_start_10
    iget-object v1, p0, Landroidx/room/o;->i:Landroidx/room/o$b;

    invoke-virtual {v1}, Landroidx/room/o$b;->a()[I

    move-result-object v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_4a

    if-nez v1, :cond_1c

    .line 5
    :try_start_18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1b} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1b} :catch_4f

    return-void

    .line 6
    :cond_1c
    :try_start_1c
    array-length v2, v1

    .line 7
    invoke-static {p1}, Landroidx/room/o;->c(Lb1/g;)V
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_4a

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_36

    .line 8
    :try_start_23
    aget v4, v1, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_30

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2c

    goto :goto_33

    .line 9
    :cond_2c
    invoke-direct {p0, p1, v3}, Landroidx/room/o;->n(Lb1/g;I)V

    goto :goto_33

    .line 10
    :cond_30
    invoke-direct {p0, p1, v3}, Landroidx/room/o;->m(Lb1/g;I)V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 11
    :cond_36
    invoke-interface {p1}, Lb1/g;->u1()V
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_45

    .line 12
    :try_start_39
    invoke-interface {p1}, Lb1/g;->X1()V

    .line 13
    iget-object v1, p0, Landroidx/room/o;->i:Landroidx/room/o$b;

    invoke-virtual {v1}, Landroidx/room/o$b;->d()V
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_4a

    .line 14
    :try_start_41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_44} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_44} :catch_4f

    goto :goto_7

    :catchall_45
    move-exception v1

    .line 15
    :try_start_46
    invoke-interface {p1}, Lb1/g;->X1()V

    .line 16
    throw v1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    .line 17
    :try_start_4b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    throw p1
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4f} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception p1

    goto :goto_52

    :catch_51
    move-exception p1

    :goto_52
    const-string v0, "ROOM"

    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 19
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

###### Class androidx.room.o.a (androidx.room.o$a)
.class Landroidx/room/o$a;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/room/o;


# direct methods
.method constructor <init>(Landroidx/room/o;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v1, v1, Landroidx/room/o;->e:Landroidx/room/h0;

    new-instance v2, Lb1/a;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Lb1/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/room/h0;->y(Lb1/j;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :goto_14
    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_38

    goto :goto_14

    .line 6
    :cond_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 8
    iget-object v1, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v1, v1, Landroidx/room/o;->h:Lb1/k;

    invoke-interface {v1}, Lb1/k;->u0()I

    :cond_37
    return-object v0

    :catchall_38
    move-exception v0

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    goto :goto_3e

    :goto_3d
    throw v0

    :goto_3e
    goto :goto_3d
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->k()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 3
    :try_start_c
    iget-object v2, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    invoke-virtual {v2}, Landroidx/room/o;->d()Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_12} :catch_7e
    .catchall {:try_start_c .. :try_end_12} :catchall_7c

    if-nez v2, :cond_21

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_20

    .line 6
    invoke-virtual {v0}, Landroidx/room/a;->b()V

    :cond_20
    return-void

    .line 7
    :cond_21
    :try_start_21
    iget-object v2, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v2, v2, Landroidx/room/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_2b} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_2b} :catch_7e
    .catchall {:try_start_21 .. :try_end_2b} :catchall_7c

    if-nez v2, :cond_3a

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_39

    .line 10
    invoke-virtual {v0}, Landroidx/room/a;->b()V

    :cond_39
    return-void

    .line 11
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v2, v2, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->p()Z

    move-result v2
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_42} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_42} :catch_7e
    .catchall {:try_start_3a .. :try_end_42} :catchall_7c

    if-eqz v2, :cond_51

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_50

    .line 14
    invoke-virtual {v0}, Landroidx/room/a;->b()V

    :cond_50
    return-void

    .line 15
    :cond_51
    :try_start_51
    iget-object v2, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v2, v2, Landroidx/room/o;->e:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->l()Lb1/h;

    move-result-object v2

    invoke-interface {v2}, Lb1/h;->K1()Lb1/g;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Lb1/g;->z1()V
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_51 .. :try_end_60} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_60} :catch_7e
    .catchall {:try_start_51 .. :try_end_60} :catchall_7c

    .line 17
    :try_start_60
    invoke-direct {p0}, Landroidx/room/o$a;->a()Ljava/util/Set;

    move-result-object v1

    .line 18
    invoke-interface {v2}, Lb1/g;->u1()V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_77

    .line 19
    :try_start_67
    invoke-interface {v2}, Lb1/g;->X1()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6a} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_6a} :catch_7e
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7c

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_92

    .line 22
    :goto_73
    invoke-virtual {v0}, Landroidx/room/a;->b()V

    goto :goto_92

    :catchall_77
    move-exception v3

    .line 23
    :try_start_78
    invoke-interface {v2}, Lb1/g;->X1()V

    .line 24
    throw v3
    :try_end_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_78 .. :try_end_7c} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_7c} :catch_7e
    .catchall {:try_start_78 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v1

    goto :goto_c3

    :catch_7e
    move-exception v2

    goto :goto_81

    :catch_80
    move-exception v2

    :goto_81
    :try_start_81
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    .line 25
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_7c

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_92

    goto :goto_73

    :cond_92
    :goto_92
    if-eqz v1, :cond_c2

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 29
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->k:Lk/b;

    monitor-enter v0

    .line 30
    :try_start_9f
    iget-object v2, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v2, v2, Landroidx/room/o;->k:Lk/b;

    invoke-virtual {v2}, Lk/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/o$d;

    invoke-virtual {v3, v1}, Landroidx/room/o$d;->a(Ljava/util/Set;)V

    goto :goto_a7

    .line 32
    :cond_bd
    monitor-exit v0

    goto :goto_c2

    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_9f .. :try_end_c1} :catchall_bf

    throw v1

    :cond_c2
    :goto_c2
    return-void

    .line 33
    :goto_c3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    iget-object v0, p0, Landroidx/room/o$a;->o:Landroidx/room/o;

    iget-object v0, v0, Landroidx/room/o;->d:Landroidx/room/a;

    if-eqz v0, :cond_cf

    .line 35
    invoke-virtual {v0}, Landroidx/room/a;->b()V

    .line 36
    :cond_cf
    goto :goto_d1

    :goto_d0
    throw v1

    :goto_d1
    goto :goto_d0
.end method

###### Class androidx.room.o.b (androidx.room.o$b)
.class Landroidx/room/o$b;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:[J

.field final b:[Z

.field final c:[I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/o$b;->a:[J

    .line 3
    new-array v1, p1, [Z

    iput-object v1, p0, Landroidx/room/o$b;->b:[Z

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/room/o$b;->c:[I

    const-wide/16 v2, 0x0

    .line 5
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    const/4 p1, 0x0

    .line 6
    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method a()[I
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Landroidx/room/o$b;->d:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Landroidx/room/o$b;->e:Z

    if-eqz v0, :cond_a

    goto :goto_3f

    .line 3
    :cond_a
    iget-object v0, p0, Landroidx/room/o$b;->a:[J

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-ge v2, v0, :cond_37

    .line 4
    iget-object v4, p0, Landroidx/room/o$b;->a:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    .line 5
    :goto_1f
    iget-object v5, p0, Landroidx/room/o$b;->b:[Z

    aget-boolean v6, v5, v2

    if-eq v4, v6, :cond_2e

    .line 6
    iget-object v6, p0, Landroidx/room/o$b;->c:[I

    if-eqz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x2

    :goto_2b
    aput v3, v6, v2

    goto :goto_32

    .line 7
    :cond_2e
    iget-object v3, p0, Landroidx/room/o$b;->c:[I

    aput v1, v3, v2

    .line 8
    :goto_32
    aput-boolean v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 9
    :cond_37
    iput-boolean v3, p0, Landroidx/room/o$b;->e:Z

    .line 10
    iput-boolean v1, p0, Landroidx/room/o$b;->d:Z

    .line 11
    iget-object v0, p0, Landroidx/room/o$b;->c:[I

    monitor-exit p0

    return-object v0

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    .line 12
    monitor-exit p0

    return-object v0

    :catchall_42
    move-exception v0

    .line 13
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method

.method varargs b([I)Z
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, v0, :cond_1e

    aget v3, p1, v1

    .line 3
    iget-object v4, p0, Landroidx/room/o$b;->a:[J

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    .line 4
    aput-wide v7, v4, v3

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    cmp-long v8, v5, v3

    if-nez v8, :cond_1b

    .line 5
    iput-boolean v7, p0, Landroidx/room/o$b;->d:Z

    const/4 v2, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6
    :cond_1e
    monitor-exit p0

    return v2

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    goto :goto_24

    :goto_23
    throw p1

    :goto_24
    goto :goto_23
.end method

.method varargs c([I)Z
    .registers 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, v0, :cond_1d

    aget v3, p1, v1

    .line 3
    iget-object v4, p0, Landroidx/room/o$b;->a:[J

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    .line 4
    aput-wide v9, v4, v3

    const/4 v3, 0x1

    cmp-long v4, v5, v7

    if-nez v4, :cond_1a

    .line 5
    iput-boolean v3, p0, Landroidx/room/o$b;->d:Z

    const/4 v2, 0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6
    :cond_1d
    monitor-exit p0

    return v2

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method d()V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-boolean v0, p0, Landroidx/room/o$b;->e:Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method e()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/room/o$b;->b:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/room/o$b;->d:Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

###### Class androidx.room.o.c (androidx.room.o$c)
.class public abstract Landroidx/room/o$c;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/room/o$c;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class androidx.room.o.d (androidx.room.o$d)
.class Landroidx/room/o$d;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:[I

.field private final b:[Ljava/lang/String;

.field final c:Landroidx/room/o$c;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/room/o$c;[I[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/o$d;->c:Landroidx/room/o$c;

    .line 3
    iput-object p2, p0, Landroidx/room/o$d;->a:[I

    .line 4
    iput-object p3, p0, Landroidx/room/o$d;->b:[Ljava/lang/String;

    .line 5
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1f

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    .line 7
    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/o$d;->d:Ljava/util/Set;

    goto :goto_22

    :cond_1f
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/room/o$d;->d:Ljava/util/Set;

    :goto_22
    return-void
.end method


# virtual methods
.method a(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/o$d;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_2c

    .line 2
    iget-object v3, p0, Landroidx/room/o$d;->a:[I

    aget v3, v3, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    .line 4
    iget-object v1, p0, Landroidx/room/o$d;->d:Ljava/util/Set;

    goto :goto_29

    :cond_1b
    if-nez v1, :cond_22

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 6
    :cond_22
    iget-object v3, p0, Landroidx/room/o$d;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2c
    if-eqz v1, :cond_33

    .line 7
    iget-object p1, p0, Landroidx/room/o$d;->c:Landroidx/room/o$c;

    invoke-virtual {p1, v1}, Landroidx/room/o$c;->b(Ljava/util/Set;)V

    :cond_33
    return-void
.end method

.method b([Ljava/lang/String;)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/room/o$d;->b:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1e

    .line 2
    array-length v0, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_48

    aget-object v4, p1, v2

    .line 3
    iget-object v5, p0, Landroidx/room/o$d;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4
    iget-object v3, p0, Landroidx/room/o$d;->d:Ljava/util/Set;

    goto :goto_48

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5
    :cond_1e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    array-length v2, p1

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v2, :cond_41

    aget-object v5, p1, v4

    .line 7
    iget-object v6, p0, Landroidx/room/o$d;->b:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v7, :cond_3e

    aget-object v9, v6, v8

    .line 8
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 9
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_3b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_3e
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 10
    :cond_41
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_48

    move-object v3, v0

    :cond_48
    :goto_48
    if-eqz v3, :cond_4f

    .line 11
    iget-object p1, p0, Landroidx/room/o$d;->c:Landroidx/room/o$c;

    invoke-virtual {p1, v3}, Landroidx/room/o$c;->b(Ljava/util/Set;)V

    :cond_4f
    return-void
.end method

###### Class androidx.room.n (androidx.room.n)
.class public final synthetic Landroidx/room/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/room/o;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/o;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/n;->o:Landroidx/room/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/n;->o:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->g()V

    return-void
.end method
