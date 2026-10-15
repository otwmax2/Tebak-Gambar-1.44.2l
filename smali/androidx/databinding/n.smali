###### Class androidx.databinding.n (androidx.databinding.n)
.class public Landroidx/databinding/n;
.super Landroidx/databinding/b;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/n;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/databinding/n$a;

    invoke-direct {v0}, Landroidx/databinding/n$a;-><init>()V

    sput-object v0, Landroidx/databinding/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    .line 2
    iput p1, p0, Landroidx/databinding/n;->p:I

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
    iget p2, p0, Landroidx/databinding/n;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public y()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/databinding/n;->p:I

    return v0
.end method

.method public z(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/databinding/n;->p:I

    if-eq p1, v0, :cond_9

    .line 2
    iput p1, p0, Landroidx/databinding/n;->p:I

    .line 3
    invoke-virtual {p0}, Landroidx/databinding/a;->w()V

    :cond_9
    return-void
.end method

###### Class androidx.databinding.n.a (androidx.databinding.n$a)
.class Landroidx/databinding/n$a;
.super Ljava/lang/Object;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/databinding/n;",
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
.method public a(Landroid/os/Parcel;)Landroidx/databinding/n;
    .registers 3

    .line 1
    new-instance v0, Landroidx/databinding/n;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Landroidx/databinding/n;-><init>(I)V

    return-object v0
.end method

.method public b(I)[Landroidx/databinding/n;
    .registers 2

    .line 1
    new-array p1, p1, [Landroidx/databinding/n;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/n$a;->a(Landroid/os/Parcel;)Landroidx/databinding/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/n$a;->b(I)[Landroidx/databinding/n;

    move-result-object p1

    return-object p1
.end method
