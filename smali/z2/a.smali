###### Class z2.a (z2.a)
.class public Lz2/a;
.super Ljava/lang/Object;
.source "Bundler.java"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz2/a;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static a()Lz2/a;
    .registers 2

    .line 1
    new-instance v0, Lz2/a;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lz2/a;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public b()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lz2/a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public c(Ljava/lang/String;I)Lz2/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lz2/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public d(Ljava/lang/String;Landroid/os/Parcelable;)Lz2/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lz2/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/io/Serializable;)Lz2/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lz2/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;Z)Lz2/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lz2/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
