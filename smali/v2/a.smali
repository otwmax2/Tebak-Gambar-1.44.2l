###### Class v2.a (v2.a)
.class public abstract Lv2/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lv2/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/j<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private o:Lt2/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 1

    return-void
.end method

.method public g(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public k()Lt2/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/a;->o:Lt2/c;

    return-object v0
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public m(Lt2/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lv2/a;->o:Lt2/c;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method
