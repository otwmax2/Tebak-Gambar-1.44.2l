###### Class androidx.databinding.l (androidx.databinding.l)
.class public Landroidx/databinding/l;
.super Landroidx/databinding/b;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/l;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/databinding/l$a;

    invoke-direct {v0}, Landroidx/databinding/l$a;-><init>()V

    sput-object v0, Landroidx/databinding/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/databinding/l;->p:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-boolean p2, p0, Landroidx/databinding/l;->p:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/l;->p:Z

    return v0
.end method

.method public z(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/l;->p:Z

    if-eq p1, v0, :cond_9

    .line 2
    iput-boolean p1, p0, Landroidx/databinding/l;->p:Z

    .line 3
    invoke-virtual {p0}, Landroidx/databinding/a;->w()V

    :cond_9
    return-void
.end method

###### Class androidx.databinding.l.a (androidx.databinding.l$a)
.class Landroidx/databinding/l$a;
.super Ljava/lang/Object;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/databinding/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/databinding/l;
    .registers 4

    .line 1
    new-instance v0, Landroidx/databinding/l;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-direct {v0, v1}, Landroidx/databinding/l;-><init>(Z)V

    return-object v0
.end method

.method public b(I)[Landroidx/databinding/l;
    .registers 2

    .line 1
    new-array p1, p1, [Landroidx/databinding/l;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/l$a;->a(Landroid/os/Parcel;)Landroidx/databinding/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/l$a;->b(I)[Landroidx/databinding/l;

    move-result-object p1

    return-object p1
.end method
