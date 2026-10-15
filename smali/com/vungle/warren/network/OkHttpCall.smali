###### Class com.vungle.warren.network.OkHttpCall (com.vungle.warren.network.OkHttpCall)
.class final Lcom/vungle/warren/network/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lcom/vungle/warren/network/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;,
        Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Call<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "OkHttpCall"


# instance fields
.field private final a:Lcom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lja/d0;",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lja/e;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lja/e;Lcom/vungle/warren/network/converters/Converter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/e;",
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lja/d0;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall;->b:Lja/e;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/network/OkHttpCall;->a:Lcom/vungle/warren/network/converters/Converter;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/network/OkHttpCall;)Lcom/vungle/warren/network/converters/Converter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/network/OkHttpCall;->a:Lcom/vungle/warren/network/converters/Converter;

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/network/OkHttpCall;Lja/c0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/network/OkHttpCall;->d(Lja/c0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/network/OkHttpCall;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lja/c0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/c0;",
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lja/d0;",
            "TT;>;)",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lja/c0;->k()Lja/c0$a;

    move-result-object p1

    new-instance v1, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;

    .line 3
    invoke-virtual {v0}, Lja/d0;->contentType()Lja/v;

    move-result-object v2

    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;-><init>(Lja/v;J)V

    invoke-virtual {p1, v1}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4f

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_2a

    goto :goto_4f

    :cond_2a
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_46

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_33

    goto :goto_46

    .line 6
    :cond_33
    new-instance v1, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v1, v0}, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lja/d0;)V

    .line 7
    :try_start_38
    invoke-interface {p2, v1}, Lcom/vungle/warren/network/converters/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/vungle/warren/network/Response;->success(Ljava/lang/Object;Lja/c0;)Lcom/vungle/warren/network/Response;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p1

    .line 8
    invoke-virtual {v1}, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->c()V

    .line 9
    throw p1

    .line 10
    :cond_46
    :goto_46
    invoke-virtual {v0}, Lja/d0;->close()V

    const/4 p2, 0x0

    .line 11
    invoke-static {p2, p1}, Lcom/vungle/warren/network/Response;->success(Ljava/lang/Object;Lja/c0;)Lcom/vungle/warren/network/Response;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4f
    :goto_4f
    :try_start_4f
    new-instance p2, Lokio/c;

    invoke-direct {p2}, Lokio/c;-><init>()V

    .line 13
    invoke-virtual {v0}, Lja/d0;->source()Lokio/e;

    move-result-object v1

    invoke-interface {v1, p2}, Lokio/e;->l3(Lokio/t;)J

    .line 14
    invoke-virtual {v0}, Lja/d0;->contentType()Lja/v;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v2

    .line 16
    invoke-static {v1, v2, v3, p2}, Lja/d0;->create(Lja/v;JLokio/e;)Lja/d0;

    move-result-object p2

    .line 17
    invoke-static {p2, p1}, Lcom/vungle/warren/network/Response;->error(Lja/d0;Lja/c0;)Lcom/vungle/warren/network/Response;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_4f .. :try_end_6b} :catchall_6f

    .line 18
    invoke-virtual {v0}, Lja/d0;->close()V

    return-object p1

    :catchall_6f
    move-exception p1

    invoke-virtual {v0}, Lja/d0;->close()V

    .line 19
    throw p1
.end method


# virtual methods
.method public enqueue(Lcom/vungle/warren/network/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall;->b:Lja/e;

    new-instance v1, Lcom/vungle/warren/network/OkHttpCall$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/network/OkHttpCall$1;-><init>(Lcom/vungle/warren/network/OkHttpCall;Lcom/vungle/warren/network/Callback;)V

    invoke-interface {v0, v1}, Lja/e;->M1(Lja/f;)V

    return-void
.end method

.method public execute()Lcom/vungle/warren/network/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall;->b:Lja/e;

    .line 3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    .line 4
    invoke-interface {v0}, Lja/e;->execute()Lja/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/network/OkHttpCall;->a:Lcom/vungle/warren/network/converters/Converter;

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/network/OkHttpCall;->d(Lja/c0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;

    move-result-object v0

    return-object v0

    :catchall_f
    move-exception v0

    .line 5
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

###### Class com.vungle.warren.network.OkHttpCall.AnonymousClass1 (com.vungle.warren.network.OkHttpCall$1)
.class Lcom/vungle/warren/network/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lja/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/network/OkHttpCall;->enqueue(Lcom/vungle/warren/network/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/network/Callback;

.field final synthetic b:Lcom/vungle/warren/network/OkHttpCall;


# direct methods
.method constructor <init>(Lcom/vungle/warren/network/OkHttpCall;Lcom/vungle/warren/network/Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$1;->b:Lcom/vungle/warren/network/OkHttpCall;

    iput-object p2, p0, Lcom/vungle/warren/network/OkHttpCall$1;->a:Lcom/vungle/warren/network/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$1;->a:Lcom/vungle/warren/network/Callback;

    iget-object v1, p0, Lcom/vungle/warren/network/OkHttpCall$1;->b:Lcom/vungle/warren/network/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/network/Callback;->onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_12

    :catchall_8
    move-exception p1

    .line 2
    invoke-static {}, Lcom/vungle/warren/network/OkHttpCall;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error on executing callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method


# virtual methods
.method public onFailure(Lja/e;Ljava/io/IOException;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/vungle/warren/network/OkHttpCall$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lja/e;Lja/c0;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$1;->b:Lcom/vungle/warren/network/OkHttpCall;

    invoke-static {p1}, Lcom/vungle/warren/network/OkHttpCall;->a(Lcom/vungle/warren/network/OkHttpCall;)Lcom/vungle/warren/network/converters/Converter;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/vungle/warren/network/OkHttpCall;->b(Lcom/vungle/warren/network/OkHttpCall;Lja/c0;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Response;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1d

    .line 2
    :try_start_a
    iget-object p2, p0, Lcom/vungle/warren/network/OkHttpCall$1;->a:Lcom/vungle/warren/network/Callback;

    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$1;->b:Lcom/vungle/warren/network/OkHttpCall;

    invoke-interface {p2, v0, p1}, Lcom/vungle/warren/network/Callback;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception p1

    .line 3
    invoke-static {}, Lcom/vungle/warren/network/OkHttpCall;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Error on excuting callback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void

    :catchall_1d
    move-exception p1

    .line 4
    invoke-direct {p0, p1}, Lcom/vungle/warren/network/OkHttpCall$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.vungle.warren.network.OkHttpCall.ExceptionCatchingResponseBody (com.vungle.warren.network.OkHttpCall$ExceptionCatchingResponseBody)
.class final Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;
.super Lja/d0;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingResponseBody"
.end annotation


# instance fields
.field private final p:Lja/d0;

.field q:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lja/d0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lja/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->p:Lja/d0;

    return-void
.end method


# virtual methods
.method c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->q:Ljava/io/IOException;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    throw v0
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->p:Lja/d0;

    invoke-virtual {v0}, Lja/d0;->close()V

    return-void
.end method

.method public contentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->p:Lja/d0;

    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->p:Lja/d0;

    invoke-virtual {v0}, Lja/d0;->contentType()Lja/v;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;

    iget-object v1, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->p:Lja/d0;

    invoke-virtual {v1}, Lja/d0;->source()Lokio/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;Lokio/u;)V

    invoke-static {v0}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.network.OkHttpCall.ExceptionCatchingResponseBody.AnonymousClass1 (com.vungle.warren.network.OkHttpCall$ExceptionCatchingResponseBody$1)
.class Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;
.super Lokio/i;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->source()Lokio/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;


# direct methods
.method constructor <init>(Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;Lokio/u;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;->p:Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {p0, p2}, Lokio/i;-><init>(Lokio/u;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/c;J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/i;->read(Lokio/c;J)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p1

    :catch_5
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody$1;->p:Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;

    iput-object p1, p2, Lcom/vungle/warren/network/OkHttpCall$ExceptionCatchingResponseBody;->q:Ljava/io/IOException;

    .line 3
    throw p1
.end method

###### Class com.vungle.warren.network.OkHttpCall.NoContentResponseBody (com.vungle.warren.network.OkHttpCall$NoContentResponseBody)
.class final Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;
.super Lja/d0;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/network/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final p:Lja/v;

.field private final q:J


# direct methods
.method constructor <init>(Lja/v;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lja/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->p:Lja/v;

    .line 3
    iput-wide p2, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->q:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->q:J

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/OkHttpCall$NoContentResponseBody;->p:Lja/v;

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
