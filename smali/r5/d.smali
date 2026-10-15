###### Class r5.d (r5.d)
.class Lr5/d;
.super Ljava/lang/Object;
.source "KeysMap.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr5/d;->a:Ljava/util/Map;

    .line 3
    iput p1, p0, Lr5/d;->b:I

    .line 4
    iput p2, p0, Lr5/d;->c:I

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    iget v0, p0, Lr5/d;->c:I

    invoke-static {p1, v0}, Lr5/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom attribute key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_11

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_11

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_11
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lr5/d;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1}, Lr5/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr5/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lr5/d;->b:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3d

    iget-object v1, p0, Lr5/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3d

    .line 3
    :cond_19
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored entry \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" when adding custom keys. Maximum allowable: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lr5/d;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Ln5/g;->k(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_5f

    .line 5
    monitor-exit p0

    return v3

    .line 6
    :cond_3d
    :goto_3d
    :try_start_3d
    iget p1, p0, Lr5/d;->c:I

    invoke-static {p2, p1}, Lr5/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lr5/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lq5/i;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_5f

    if-eqz v1, :cond_53

    .line 8
    monitor-exit p0

    return v3

    .line 9
    :cond_53
    :try_start_53
    iget-object v1, p0, Lr5/d;->a:Ljava/util/Map;

    if-nez p2, :cond_59

    const-string p1, ""

    :cond_59
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5f

    const/4 p1, 0x1

    .line 10
    monitor-exit p0

    return p1

    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lr5/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lr5/d;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Lr5/d;->b:I

    if-lt v3, v4, :cond_36

    iget-object v3, p0, Lr5/d;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lr5/d;->a:Ljava/util/Map;

    if-nez v1, :cond_43

    const-string v1, ""

    goto :goto_49

    :cond_43
    iget v4, p0, Lr5/d;->c:I

    invoke-static {v1, v4}, Lr5/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_4d
    if-lez v0, :cond_71

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries when adding custom keys. Maximum allowable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lr5/d;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ln5/g;->k(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_2 .. :try_end_71} :catchall_73

    .line 8
    :cond_71
    monitor-exit p0

    return-void

    :catchall_73
    move-exception p1

    monitor-exit p0

    goto :goto_77

    :goto_76
    throw p1

    :goto_77
    goto :goto_76
.end method
