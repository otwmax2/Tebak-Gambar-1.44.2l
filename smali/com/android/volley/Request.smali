###### Class com.android.volley.Request (com.android.volley.Request)
.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;,
        Lcom/android/volley/Request$NetworkRequestCompleteListener;,
        Lcom/android/volley/Request$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/android/volley/RetryPolicy;

.field private C:Lcom/android/volley/Cache$Entry;

.field private D:Lcom/android/volley/Request$NetworkRequestCompleteListener;

.field private final o:Lcom/android/volley/VolleyLog$MarkerLog;

.field private final p:I

.field private final q:Ljava/lang/String;

.field private final r:I

.field private final s:Ljava/lang/Object;

.field private t:Lcom/android/volley/Response$ErrorListener;

.field private u:Ljava/lang/Integer;

.field private v:Lcom/android/volley/RequestQueue;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcom/android/volley/VolleyLog$MarkerLog;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/VolleyLog$MarkerLog;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/volley/Request;->w:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/volley/Request;->x:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/volley/Request;->y:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/volley/Request;->z:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/volley/Request;->A:Z

    .line 9
    iput-object v1, p0, Lcom/android/volley/Request;->C:Lcom/android/volley/Cache$Entry;

    .line 10
    iput p1, p0, Lcom/android/volley/Request;->p:I

    .line 11
    iput-object p2, p0, Lcom/android/volley/Request;->q:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/android/volley/Request;->t:Lcom/android/volley/Response$ErrorListener;

    .line 13
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {p1}, Lcom/android/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->d0(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 14
    invoke-static {p2}, Lcom/android/volley/Request;->l(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/volley/Request;->r:I

    return-void
.end method

.method static synthetic c(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/VolleyLog$MarkerLog;

    return-object p0
.end method

.method private k(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 8
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 10
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_6f} :catch_70

    return-object p1

    :catch_70
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    :goto_88
    throw v0

    :goto_89
    goto :goto_88
.end method

.method private static l(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected I()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public J()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->L()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 3
    invoke-virtual {p0}, Lcom/android/volley/Request;->M()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->k(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected L()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcom/android/volley/Request$Priority;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/volley/Request$Priority;->p:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public O()Lcom/android/volley/RetryPolicy;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->B:Lcom/android/volley/RetryPolicy;

    return-object v0
.end method

.method public final P()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->O()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/volley/RetryPolicy;->b()I

    move-result v0

    return v0
.end method

.method public Q()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/volley/Request;->r:I

    return v0
.end method

.method public R()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->q:Ljava/lang/String;

    return-object v0
.end method

.method public S()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/volley/Request;->y:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public T()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/volley/Request;->x:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public U()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Lcom/android/volley/Request;->y:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method V()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/Request;->D:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 4
    invoke-interface {v1, p0}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->a(Lcom/android/volley/Request;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    .line 5
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method W(Lcom/android/volley/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/Request;->D:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 4
    invoke-interface {v1, p0, p1}, Lcom/android/volley/Request$NetworkRequestCompleteListener;->b(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 5
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected X(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .registers 2

    return-object p1
.end method

.method protected abstract Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method Z(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->v:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/android/volley/RequestQueue;->g(Lcom/android/volley/Request;I)V

    :cond_7
    return-void
.end method

.method public a0(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/Request;->C:Lcom/android/volley/Cache$Entry;

    return-object p0
.end method

.method b0(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Lcom/android/volley/Request;->D:Lcom/android/volley/Request$NetworkRequestCompleteListener;

    .line 3
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public c0(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/Request;->v:Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->g(Lcom/android/volley/Request;)I

    move-result p1

    return p1
.end method

.method public d0(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/Request;->B:Lcom/android/volley/RetryPolicy;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->c:Z

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/volley/VolleyLog$MarkerLog;->a(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method public final e0(I)Lcom/android/volley/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/Request;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method public f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Lcom/android/volley/Request;->x:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/volley/Request;->t:Lcom/android/volley/Response$ErrorListener;

    .line 4
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final f0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/volley/Request;->w:Z

    return v0
.end method

.method public g(Lcom/android/volley/Request;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->N()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/android/volley/Request;->N()Lcom/android/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 3
    iget-object v0, p0, Lcom/android/volley/Request;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/android/volley/Request;->u:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_22

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_22
    return v0
.end method

.method public final g0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/volley/Request;->A:Z

    return v0
.end method

.method public final h0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/volley/Request;->z:Z

    return v0
.end method

.method public i(Lcom/android/volley/VolleyError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/Request;->t:Lcom/android/volley/Response$ErrorListener;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 4
    invoke-interface {v1, p1}, Lcom/android/volley/Response$ErrorListener;->c(Lcom/android/volley/VolleyError;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 5
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract j(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method m(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->v:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->c(Lcom/android/volley/Request;)V

    .line 3
    :cond_7
    sget-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->c:Z

    if-eqz v0, :cond_3d

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance v3, Lcom/android/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/Request$1;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_2f
    iget-object v2, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->a(Ljava/lang/String;J)V

    .line 9
    iget-object p1, p0, Lcom/android/volley/Request;->o:Lcom/android/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->b(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public n()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->u()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 3
    invoke-virtual {p0}, Lcom/android/volley/Request;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->k(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/android/volley/Cache$Entry;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request;->C:Lcom/android/volley/Cache$Entry;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->R()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/volley/Request;->s()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    goto :goto_26

    .line 3
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    :goto_26
    return-object v0
.end method

.method public r()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/volley/Request;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->Q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/volley/Request;->T()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "[X] "

    goto :goto_29

    :cond_27
    const-string v2, "[ ] "

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/android/volley/Request;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/android/volley/Request;->N()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/Request;->u:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.android.volley.Request.AnonymousClass1 (com.android.volley.Request$1)
.class Lcom/android/volley/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:J

.field final synthetic q:Lcom/android/volley/Request;


# direct methods
.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/volley/Request$1;->q:Lcom/android/volley/Request;

    iput-object p2, p0, Lcom/android/volley/Request$1;->o:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/Request$1;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/volley/Request$1;->q:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->c(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$1;->o:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/Request$1;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/VolleyLog$MarkerLog;->a(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/android/volley/Request$1;->q:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->c(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$1;->q:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->b(Ljava/lang/String;)V

    return-void
.end method

###### Class com.android.volley.Request.Method (com.android.volley.Request$Method)
.class public interface abstract Lcom/android/volley/Request$Method;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Method"
.end annotation

###### Class com.android.volley.Request.NetworkRequestCompleteListener (com.android.volley.Request$NetworkRequestCompleteListener)
.class interface abstract Lcom/android/volley/Request$NetworkRequestCompleteListener;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NetworkRequestCompleteListener"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/volley/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation
.end method

###### Class com.android.volley.Request.Priority (com.android.volley.Request$Priority)
.class public final enum Lcom/android/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lcom/android/volley/Request$Priority;

.field public static final enum p:Lcom/android/volley/Request$Priority;

.field public static final enum q:Lcom/android/volley/Request$Priority;

.field public static final enum r:Lcom/android/volley/Request$Priority;

.field private static final synthetic s:[Lcom/android/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/volley/Request$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$Priority;->o:Lcom/android/volley/Request$Priority;

    .line 2
    new-instance v1, Lcom/android/volley/Request$Priority;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/volley/Request$Priority;->p:Lcom/android/volley/Request$Priority;

    .line 3
    new-instance v3, Lcom/android/volley/Request$Priority;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/volley/Request$Priority;->q:Lcom/android/volley/Request$Priority;

    .line 4
    new-instance v5, Lcom/android/volley/Request$Priority;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/volley/Request$Priority;->r:Lcom/android/volley/Request$Priority;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/volley/Request$Priority;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/android/volley/Request$Priority;->s:[Lcom/android/volley/Request$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/Request$Priority;
    .registers 2

    .line 1
    const-class v0, Lcom/android/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/volley/Request$Priority;

    return-object p0
.end method

.method public static values()[Lcom/android/volley/Request$Priority;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/volley/Request$Priority;->s:[Lcom/android/volley/Request$Priority;

    invoke-virtual {v0}, [Lcom/android/volley/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/volley/Request$Priority;

    return-object v0
.end method
