###### Class g2.h (g2.h)
.class public Lg2/h;
.super Ljava/lang/Object;
.source "ImageVideoWrapperEncoder.java"

# interfaces
.implements Lz1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/b<",
        "Lg2/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lz1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lz1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lz1/b;Lz1/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/b<",
            "Ljava/io/InputStream;",
            ">;",
            "Lz1/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/h;->a:Lz1/b;

    .line 3
    iput-object p2, p0, Lg2/h;->b:Lz1/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lg2/h;->c:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg2/h;->a:Lz1/b;

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg2/h;->b:Lz1/b;

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg2/h;->c:Ljava/lang/String;

    .line 3
    :cond_21
    iget-object v0, p0, Lg2/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 1
    check-cast p1, Lg2/g;

    invoke-virtual {p0, p1, p2}, Lg2/h;->c(Lg2/g;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public c(Lg2/g;Ljava/io/OutputStream;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lg2/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lg2/h;->a:Lz1/b;

    invoke-virtual {p1}, Lg2/g;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lz1/b;->b(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 3
    :cond_11
    iget-object v0, p0, Lg2/h;->b:Lz1/b;

    invoke-virtual {p1}, Lg2/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lz1/b;->b(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method
