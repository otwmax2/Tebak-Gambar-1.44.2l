###### Class com.android.volley.AsyncCache (com.android.volley.AsyncCache)
.class public abstract Lcom/android/volley/AsyncCache;
.super Ljava/lang/Object;
.source "AsyncCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;,
        Lcom/android/volley/AsyncCache$OnGetCompleteCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnGetCompleteCallback;)V
.end method

.method public abstract b(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract c(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

###### Class com.android.volley.AsyncCache.OnGetCompleteCallback (com.android.volley.AsyncCache$OnGetCompleteCallback)
.class public interface abstract Lcom/android/volley/AsyncCache$OnGetCompleteCallback;
.super Ljava/lang/Object;
.source "AsyncCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGetCompleteCallback"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/volley/Cache$Entry;)V
.end method

###### Class com.android.volley.AsyncCache.OnWriteCompleteCallback (com.android.volley.AsyncCache$OnWriteCompleteCallback)
.class public interface abstract Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;
.super Ljava/lang/Object;
.source "AsyncCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWriteCompleteCallback"
.end annotation


# virtual methods
.method public abstract a()V
.end method
