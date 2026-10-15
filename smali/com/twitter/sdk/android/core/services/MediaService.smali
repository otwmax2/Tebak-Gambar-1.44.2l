###### Class com.twitter.sdk.android.core.services.MediaService (com.twitter.sdk.android.core.services.MediaService)
.class public interface abstract Lcom/twitter/sdk/android/core/services/MediaService;
.super Ljava/lang/Object;
.source "MediaService.java"


# virtual methods
.method public abstract upload(Lja/b0;Lja/b0;Lja/b0;)Lwa/b;
    .param p1    # Lja/b0;
        .annotation runtime Lya/q;
            value = "media"
        .end annotation
    .end param
    .param p2    # Lja/b0;
        .annotation runtime Lya/q;
            value = "media_data"
        .end annotation
    .end param
    .param p3    # Lja/b0;
        .annotation runtime Lya/q;
            value = "additional_owners"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/b0;",
            "Lja/b0;",
            "Lja/b0;",
            ")",
            "Lwa/b<",
            "Lf9/i;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/l;
    .end annotation

    .annotation runtime Lya/o;
        value = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
