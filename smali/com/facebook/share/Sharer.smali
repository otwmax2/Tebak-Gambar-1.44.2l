###### Class com.facebook.share.Sharer (com.facebook.share.Sharer)
.class public interface abstract Lcom/facebook/share/Sharer;
.super Ljava/lang/Object;
.source "Sharer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/Sharer$Result;
    }
.end annotation


# virtual methods
.method public abstract getShouldFailOnDataError()Z
.end method

.method public abstract setShouldFailOnDataError(Z)V
.end method

###### Class com.facebook.share.Sharer.Result (com.facebook.share.Sharer$Result)
.class public final Lcom/facebook/share/Sharer$Result;
.super Ljava/lang/Object;
.source "Sharer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/Sharer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPostId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-object v0
.end method
