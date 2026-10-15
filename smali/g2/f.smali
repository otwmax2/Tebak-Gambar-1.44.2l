###### Class g2.f (g2.f)
.class public Lg2/f;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lg2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg2/l<",
        "TA;",
        "Lg2/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg2/l;Lg2/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lg2/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    const-string v0, "At least one of streamLoader and fileDescriptorLoader must be non null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :cond_a
    iput-object p1, p0, Lg2/f;->a:Lg2/l;

    .line 4
    iput-object p2, p0, Lg2/f;->b:Lg2/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)La2/c;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "La2/c<",
            "Lg2/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg2/f;->a:Lg2/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lg2/l;->a(Ljava/lang/Object;II)La2/c;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    .line 3
    :goto_b
    iget-object v2, p0, Lg2/f;->b:Lg2/l;

    if-eqz v2, :cond_14

    .line 4
    invoke-interface {v2, p1, p2, p3}, Lg2/l;->a(Ljava/lang/Object;II)La2/c;

    move-result-object p1

    goto :goto_15

    :cond_14
    move-object p1, v1

    :goto_15
    if-nez v0, :cond_1b

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    return-object v1

    .line 5
    :cond_1b
    :goto_1b
    new-instance p2, Lg2/f$a;

    invoke-direct {p2, v0, p1}, Lg2/f$a;-><init>(La2/c;La2/c;)V

    return-object p2
.end method

###### Class g2.f.a (g2.f$a)
.class Lg2/f$a;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements La2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La2/c<",
        "Lg2/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:La2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:La2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La2/c;La2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/c<",
            "Ljava/io/InputStream;",
            ">;",
            "La2/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/f$a;->a:La2/c;

    .line 3
    iput-object p2, p0, Lg2/f$a;->b:La2/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg2/f$a;->a:La2/c;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, La2/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Lg2/f$a;->b:La2/c;

    invoke-interface {v0}, La2/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lv1/i;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg2/f$a;->d(Lv1/i;)Lg2/g;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg2/f$a;->a:La2/c;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, La2/c;->c()V

    .line 3
    :cond_7
    iget-object v0, p0, Lg2/f$a;->b:La2/c;

    if-eqz v0, :cond_e

    .line 4
    invoke-interface {v0}, La2/c;->c()V

    :cond_e
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg2/f$a;->a:La2/c;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, La2/c;->cancel()V

    .line 3
    :cond_7
    iget-object v0, p0, Lg2/f$a;->b:La2/c;

    if-eqz v0, :cond_e

    .line 4
    invoke-interface {v0}, La2/c;->cancel()V

    :cond_e
    return-void
.end method

.method public d(Lv1/i;)Lg2/g;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg2/f$a;->a:La2/c;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "IVML"

    if-eqz v0, :cond_21

    .line 2
    :try_start_8
    invoke-interface {v0, p1}, La2/c;->b(Lv1/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_22

    :catch_f
    move-exception v0

    .line 3
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "Exception fetching input stream, trying ParcelFileDescriptor"

    .line 4
    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_1b
    iget-object v4, p0, Lg2/f$a;->b:La2/c;

    if-eqz v4, :cond_20

    goto :goto_21

    .line 6
    :cond_20
    throw v0

    :cond_21
    :goto_21
    move-object v0, v2

    .line 7
    :goto_22
    iget-object v4, p0, Lg2/f$a;->b:La2/c;

    if-eqz v4, :cond_3e

    .line 8
    :try_start_26
    invoke-interface {v4, p1}, La2/c;->b(Lv1/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2e

    move-object v2, p1

    goto :goto_3e

    :catch_2e
    move-exception p1

    .line 9
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "Exception fetching ParcelFileDescriptor"

    .line 10
    invoke-static {v3, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    if-eqz v0, :cond_3d

    goto :goto_3e

    .line 11
    :cond_3d
    throw p1

    .line 12
    :cond_3e
    :goto_3e
    new-instance p1, Lg2/g;

    invoke-direct {p1, v0, v2}, Lg2/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method
