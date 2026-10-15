###### Class o2.b (o2.b)
.class public Lo2/b;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lb2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb2/l<",
        "Lo2/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo2/a;


# direct methods
.method public constructor <init>(Lo2/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Data must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo2/b;->a:Lo2/a;

    return-void
.end method


# virtual methods
.method public a()Lo2/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lo2/b;->a:Lo2/a;

    return-object v0
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo2/b;->a:Lo2/a;

    invoke-virtual {v0}, Lo2/a;->a()Lb2/l;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0}, Lb2/l;->b()V

    .line 3
    :cond_b
    iget-object v0, p0, Lo2/b;->a:Lo2/a;

    invoke-virtual {v0}, Lo2/a;->b()Lb2/l;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4
    invoke-interface {v0}, Lb2/l;->b()V

    :cond_16
    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo2/b;->a:Lo2/a;

    invoke-virtual {v0}, Lo2/a;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lo2/b;->a()Lo2/a;

    move-result-object v0

    return-object v0
.end method
