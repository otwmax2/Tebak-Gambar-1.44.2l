###### Class va.c (va.c)
.class public Lva/c;
.super Ljava/lang/Object;
.source "CharArrayParcelConverter.java"

# interfaces
.implements Lua/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lua/h;"
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
.method public bridge synthetic a(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lva/c;->c(Landroid/os/Parcel;)[C

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3

    .line 1
    check-cast p1, [C

    invoke-virtual {p0, p1, p2}, Lva/c;->d([CLandroid/os/Parcel;)V

    return-void
.end method

.method public c(Landroid/os/Parcel;)[C
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    .line 2
    :cond_9
    new-array v0, v0, [C

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readCharArray([C)V

    move-object p1, v0

    :goto_f
    return-object p1
.end method

.method public d([CLandroid/os/Parcel;)V
    .registers 4

    if-nez p1, :cond_7

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 2
    :cond_7
    array-length v0, p1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeCharArray([C)V

    :goto_e
    return-void
.end method
