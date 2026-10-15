###### Class com.android.volley.toolbox.JsonRequest (com.android.volley.toolbox.JsonRequest)
.class public abstract Lcom/android/volley/toolbox/JsonRequest;
.super Lcom/android/volley/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final H:Ljava/lang/String;


# instance fields
.field private final E:Ljava/lang/Object;

.field private F:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    .line 1
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->H:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public J()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->n()[B

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/volley/Request;->f()V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->E:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_7
    iput-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->F:Lcom/android/volley/Response$Listener;

    .line 4
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected j(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->E:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->F:Lcom/android/volley/Response$Listener;

    .line 3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 4
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->b(Ljava/lang/Object;)V

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

.method public n()[B
    .registers 6

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lcom/android/volley/toolbox/JsonRequest;->G:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-object v1

    :catch_d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    iget-object v4, p0, Lcom/android/volley/toolbox/JsonRequest;->G:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/volley/toolbox/JsonRequest;->H:Ljava/lang/String;

    return-object v0
.end method
