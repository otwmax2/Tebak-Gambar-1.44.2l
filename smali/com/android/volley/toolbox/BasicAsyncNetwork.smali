###### Class com.android.volley.toolbox.BasicAsyncNetwork (com.android.volley.toolbox.BasicAsyncNetwork)
.class public Lcom/android/volley/toolbox/BasicAsyncNetwork;
.super Lcom/android/volley/AsyncNetwork;
.source "BasicAsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;,
        Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;,
        Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;
    }
.end annotation


# instance fields
.field private final b:Lcom/android/volley/toolbox/AsyncHttpStack;

.field private final c:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static synthetic d(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->g(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method

.method static synthetic e(Lcom/android/volley/toolbox/BasicAsyncNetwork;)Lcom/android/volley/toolbox/ByteArrayPool;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->c:Lcom/android/volley/toolbox/ByteArrayPool;

    return-object p0
.end method

.method static synthetic f(Lcom/android/volley/toolbox/BasicAsyncNetwork;JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->h(JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    return-void
.end method

.method private g(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "[B)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p7

    .line 1
    :try_start_5
    invoke-static/range {v0 .. v5}, Lcom/android/volley/toolbox/NetworkUtility;->e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Lcom/android/volley/AsyncNetwork;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    new-instance p5, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;

    invoke-direct {p5, p0, p1, p3, p2}, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;-><init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    .line 3
    invoke-interface {p4, p5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Lcom/android/volley/VolleyError; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 4
    invoke-interface {p2, p1}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->a(Lcom/android/volley/VolleyError;)V

    :goto_1a
    return-void
.end method

.method private h(JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;[B)V"
        }
    .end annotation

    move v1, p3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    move-object v4, p5

    move-object/from16 v7, p8

    .line 2
    invoke-static {v2, v3, p5, v7, p3}, Lcom/android/volley/toolbox/NetworkUtility;->d(JLcom/android/volley/Request;[BI)V

    const/16 v0, 0xc8

    if-lt v1, v0, :cond_2b

    const/16 v0, 0x12b

    if-le v1, v0, :cond_15

    goto :goto_2b

    .line 3
    :cond_15
    new-instance v8, Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    move-object v0, v8

    move v1, p3

    move-object/from16 v2, p8

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    move-object v2, p6

    .line 5
    invoke-interface {p6, v8}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->b(Lcom/android/volley/NetworkResponse;)V

    return-void

    :cond_2b
    :goto_2b
    move-object v2, p6

    .line 6
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-wide v4, p1

    move-object v6, p4

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->g(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/AsyncNetwork;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3
    invoke-virtual {p1}, Lcom/android/volley/Request;->p()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->c(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->b:Lcom/android/volley/toolbox/AsyncHttpStack;

    new-instance v8, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;-><init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    invoke-virtual {v7, p1, v0, v8}, Lcom/android/volley/toolbox/AsyncHttpStack;->c(Lcom/android/volley/Request;Ljava/util/Map;Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V

    return-void

    .line 5
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mBlockingExecuter must be set before making a request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.android.volley.toolbox.BasicAsyncNetwork.AnonymousClass1 (com.android.volley.toolbox.BasicAsyncNetwork$1)
.class Lcom/android/volley/toolbox/BasicAsyncNetwork$1;
.super Ljava/lang/Object;
.source "BasicAsyncNetwork.java"

# interfaces
.implements Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;->c(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/Request;

.field final synthetic b:J

.field final synthetic c:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field final synthetic d:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->d:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->a:Lcom/android/volley/Request;

    iput-wide p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->b:J

    iput-object p5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->c:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.android.volley.toolbox.BasicAsyncNetwork.Builder (com.android.volley.toolbox.BasicAsyncNetwork$Builder)
.class public Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;
.super Ljava/lang/Object;
.source "BasicAsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

###### Class com.android.volley.toolbox.BasicAsyncNetwork.InvokeRetryPolicyTask (com.android.volley.toolbox.BasicAsyncNetwork$InvokeRetryPolicyTask)
.class Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;
.super Lcom/android/volley/RequestTask;
.source "BasicAsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeRetryPolicyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final p:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field final q:Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

.field final r:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field final synthetic s:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->s:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 3
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->p:Lcom/android/volley/Request;

    .line 4
    iput-object p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->q:Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 5
    iput-object p4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->r:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->p:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->q:Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/NetworkUtility;->a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->s:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->p:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->r:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->c(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    :try_end_10
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->r:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    invoke-interface {v1, v0}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->a(Lcom/android/volley/VolleyError;)V

    :goto_17
    return-void
.end method

###### Class com.android.volley.toolbox.BasicAsyncNetwork.ResponseParsingTask (com.android.volley.toolbox.BasicAsyncNetwork$ResponseParsingTask)
.class Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;
.super Lcom/android/volley/RequestTask;
.source "BasicAsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseParsingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field p:Ljava/io/InputStream;

.field q:Lcom/android/volley/toolbox/HttpResponse;

.field r:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field s:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field t:J

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field v:I

.field final synthetic w:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# virtual methods
.method public run()V
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->p:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->q:Lcom/android/volley/toolbox/HttpResponse;

    .line 2
    invoke-virtual {v1}, Lcom/android/volley/toolbox/HttpResponse;->b()I

    move-result v1

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->w:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    invoke-static {v2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->e(Lcom/android/volley/toolbox/BasicAsyncNetwork;)Lcom/android/volley/toolbox/ByteArrayPool;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkUtility;->c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    move-result-object v11
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_24

    .line 4
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->w:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-wide v4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->t:J

    iget v6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->v:I

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->q:Lcom/android/volley/toolbox/HttpResponse;

    iget-object v8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->r:Lcom/android/volley/Request;

    iget-object v9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->s:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    iget-object v10, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->u:Ljava/util/List;

    invoke-static/range {v3 .. v11}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->f(Lcom/android/volley/toolbox/BasicAsyncNetwork;JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    return-void

    :catch_24
    move-exception v0

    move-object v4, v0

    .line 5
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->w:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->r:Lcom/android/volley/Request;

    iget-object v3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->s:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    iget-wide v5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->t:J

    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->q:Lcom/android/volley/toolbox/HttpResponse;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->d(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method
