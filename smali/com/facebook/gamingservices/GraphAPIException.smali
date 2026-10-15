###### Class com.facebook.gamingservices.GraphAPIException (com.facebook.gamingservices.GraphAPIException)
.class public final Lcom/facebook/gamingservices/GraphAPIException;
.super Ljava/lang/Exception;
.source "TournamentFetcher.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
