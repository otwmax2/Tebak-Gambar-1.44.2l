###### Class com.android.volley.toolbox.NoAsyncCache (com.android.volley.toolbox.NoAsyncCache)
.class public Lcom/android/volley/toolbox/NoAsyncCache;
.super Lcom/android/volley/AsyncCache;
.source "NoAsyncCache.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/volley/AsyncCache;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnGetCompleteCallback;)V
    .registers 3

    const/4 p1, 0x0

    .line 1
    invoke-interface {p2, p1}, Lcom/android/volley/AsyncCache$OnGetCompleteCallback;->a(Lcom/android/volley/Cache$Entry;)V

    return-void
.end method

.method public b(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .registers 2

    .line 1
    invoke-interface {p1}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->a()V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .registers 4

    .line 1
    invoke-interface {p3}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->a()V

    return-void
.end method
