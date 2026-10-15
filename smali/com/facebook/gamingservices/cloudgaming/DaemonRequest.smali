###### Class com.facebook.gamingservices.cloudgaming.DaemonRequest (com.facebook.gamingservices.cloudgaming.DaemonRequest)
.class public Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;
.super Ljava/lang/Object;
.source "DaemonRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

.field private mContext:Landroid/content/Context;

.field private mLogger:Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

.field private mParameters:Lorg/json/JSONObject;

.field private mRequestStore:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/facebook/GraphResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mParameters:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mCallback:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    .line 5
    invoke-static {p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->getInstance(Landroid/content/Context;)Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->getRequestStore()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mRequestStore:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-static {p1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;->getInstance(Landroid/content/Context;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mLogger:Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mCallback:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mParameters:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mLogger:Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->mRequestStore:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private createRequest()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;-><init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private executeAndWait()Lcom/facebook/GraphResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse;

    return-object v0
.end method

.method private executeAndWait(I)Lcom/facebook/GraphResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphResponse;

    return-object p1
.end method

.method public static executeAndWait(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)Lcom/facebook/GraphResponse;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "type"

    if-nez p1, :cond_13

    .line 3
    :try_start_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1b

    .line 5
    :cond_13
    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    :goto_1b
    new-instance p2, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 7
    invoke-direct {p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_24} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_24} :catch_25

    return-object p0

    .line 8
    :catch_25
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const/4 p1, -0x1

    const-string p2, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string v1, "Unable to correctly create the request or obtain response"

    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    return-object p0
.end method

.method public static executeAndWait(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;I)Lcom/facebook/GraphResponse;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "type"

    if-nez p1, :cond_13

    .line 10
    :try_start_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1b

    .line 12
    :cond_13
    invoke-virtual {p2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    :goto_1b
    new-instance p2, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 14
    invoke-direct {p2, p3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAndWait(I)Lcom/facebook/GraphResponse;

    move-result-object p0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_24} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_24} :catch_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_24} :catch_25

    return-object p0

    .line 15
    :catch_25
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const/4 p1, -0x1

    const-string p2, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string p3, "Unable to correctly create the request or obtain response"

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    return-object p0
.end method

.method private executeAsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;-><init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)V
    .registers 5

    const-string v0, "type"

    if-nez p1, :cond_14

    .line 3
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {p3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1c

    :catch_12
    nop

    goto :goto_25

    .line 5
    :cond_14
    invoke-virtual {p3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    :goto_1c
    new-instance p3, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 7
    invoke-direct {p3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync()V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_24} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_24} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_24} :catch_12

    goto :goto_39

    :goto_25
    if-eqz p2, :cond_39

    .line 8
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const/4 p1, -0x1

    const-string p3, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string v0, "Unable to correctly create the request or obtain response"

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Ljava/lang/String;)V
    .registers 5

    const-string v0, "type"

    if-nez p1, :cond_10

    .line 10
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_14

    :catch_e
    nop

    goto :goto_1d

    .line 12
    :cond_10
    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    :goto_14
    new-instance p3, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p3, p0, p1, p2}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;)V

    .line 14
    invoke-direct {p3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync()V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1c} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_1c} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1c} :catch_e

    goto :goto_31

    :goto_1d
    if-eqz p2, :cond_31

    .line 15
    new-instance p0, Lcom/facebook/FacebookRequestError;

    const/4 p1, -0x1

    const-string p3, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    const-string v0, "Unable to correctly create the request or obtain response"

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    invoke-static {p0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_31
    :goto_31
    return-void
.end method

###### Class com.facebook.gamingservices.cloudgaming.DaemonRequest.AnonymousClass1 (com.facebook.gamingservices.cloudgaming.DaemonRequest$1)
.class Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;
.super Ljava/lang/Object;
.source "DaemonRequest.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/facebook/GraphResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/facebook/GraphResponse;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$000(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$000(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    :cond_11
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/GraphResponse;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$1;->accept(Lcom/facebook/GraphResponse;)V

    return-void
.end method

###### Class com.facebook.gamingservices.cloudgaming.DaemonRequest.AnonymousClass2 (com.facebook.gamingservices.cloudgaming.DaemonRequest$2)
.class Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;
.super Ljava/lang/Object;
.source "DaemonRequest.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->createRequest()Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/facebook/GraphResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/GraphResponse;
    .registers 9

    const-string v0, "DAEMON_REQUEST_EXECUTE_ASYNC_FAILED"

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    :try_start_b
    iget-object v3, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "requestID"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v4}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v5}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$200(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v4, v1, v6}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;->logPreparingRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    sget-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_ACCESS_TOKEN:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    invoke-virtual {v5}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    sget-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->IS_ENV_READY:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 8
    invoke-virtual {v5}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 9
    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    .line 10
    invoke-static {v5}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$300(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.facebook.gamingservices.cloudgaming:preferences"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "daemonPackageName"

    const/4 v7, 0x0

    .line 11
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_70

    .line 12
    new-instance v3, Lcom/facebook/FacebookRequestError;

    const-string v4, "Unable to correctly create the request with a secure connection"

    invoke-direct {v3, v2, v0, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v3, v1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0

    .line 14
    :cond_70
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_73
    const-string v5, "com.facebook.gamingservices.DAEMON_REQUEST"

    .line 15
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v5, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v5}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 17
    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 19
    iget-object v7, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v7}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_82

    .line 21
    :cond_9c
    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 22
    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$400(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$300(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    iget-object v3, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v3}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$200(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;

    move-result-object v3

    iget-object v6, p0, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->this$0:Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;

    invoke-static {v6}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->access$100(Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v6}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKLogger;->logSentRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 25
    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphResponse;
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_c8} :catch_c9
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_c8} :catch_c9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_c8} :catch_c9

    return-object v3

    .line 26
    :catch_c9
    new-instance v3, Lcom/facebook/FacebookRequestError;

    const-string v4, "Unable to correctly create the request or obtain response"

    invoke-direct {v3, v2, v0, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v3, v1}, Lcom/facebook/gamingservices/cloudgaming/DaemonReceiver;->createErrorResponse(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$2;->get()Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback (com.facebook.gamingservices.cloudgaming.DaemonRequest$Callback)
.class public interface abstract Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;
.super Ljava/lang/Object;
.source "DaemonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/facebook/GraphResponse;)V
.end method
