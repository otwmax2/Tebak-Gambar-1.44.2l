###### Class com.vungle.warren.network.HttpException (com.vungle.warren.network.HttpException)
.class public Lcom/vungle/warren/network/HttpException;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# instance fields
.field private final o:I

.field private final p:Ljava/lang/String;

.field private final transient q:Lcom/vungle/warren/network/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/Response<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/warren/network/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Response<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/vungle/warren/network/HttpException;->a(Lcom/vungle/warren/network/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/network/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/network/HttpException;->o:I

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/network/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/network/HttpException;->p:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/network/HttpException;->q:Lcom/vungle/warren/network/Response;

    return-void
.end method

.method private static a(Lcom/vungle/warren/network/Response;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vungle/warren/network/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vungle/warren/network/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public code()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/network/HttpException;->o:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/HttpException;->p:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lcom/vungle/warren/network/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/network/Response<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/HttpException;->q:Lcom/vungle/warren/network/Response;

    return-object v0
.end method
