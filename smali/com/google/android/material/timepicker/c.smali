###### Class com.google.android.material.timepicker.c (com.google.android.material.timepicker.c)
.class Lcom/google/android/material/timepicker/c;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/timepicker/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Lcom/google/android/material/timepicker/a;

.field private final p:Lcom/google/android/material/timepicker/a;

.field final q:I

.field r:I

.field s:I

.field t:I

.field u:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/timepicker/c$a;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/c$a;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 2
    invoke-direct {p0, v0, v0, v1, p1}, Lcom/google/android/material/timepicker/c;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/material/timepicker/c;->r:I

    .line 5
    iput p2, p0, Lcom/google/android/material/timepicker/c;->s:I

    .line 6
    iput p3, p0, Lcom/google/android/material/timepicker/c;->t:I

    .line 7
    iput p4, p0, Lcom/google/android/material/timepicker/c;->q:I

    .line 8
    invoke-static {p1}, Lcom/google/android/material/timepicker/c;->v(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/c;->u:I

    .line 9
    new-instance p1, Lcom/google/android/material/timepicker/a;

    const/16 p2, 0x3b

    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/c;->o:Lcom/google/android/material/timepicker/a;

    .line 10
    new-instance p1, Lcom/google/android/material/timepicker/a;

    const/4 p2, 0x1

    if-ne p4, p2, :cond_22

    const/16 p2, 0x18

    goto :goto_24

    :cond_22
    const/16 p2, 0xc

    :goto_24
    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/c;->p:Lcom/google/android/material/timepicker/a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/timepicker/c;-><init>(IIII)V

    return-void
.end method

.method public static h(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    const-string v0, "%02d"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/c;->t(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-static {p0, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static v(I)I
    .registers 2

    const/16 v0, 0xc

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/timepicker/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/material/timepicker/c;

    .line 3
    iget v1, p0, Lcom/google/android/material/timepicker/c;->r:I

    iget v3, p1, Lcom/google/android/material/timepicker/c;->r:I

    if-ne v1, v3, :cond_25

    iget v1, p0, Lcom/google/android/material/timepicker/c;->s:I

    iget v3, p1, Lcom/google/android/material/timepicker/c;->s:I

    if-ne v1, v3, :cond_25

    iget v1, p0, Lcom/google/android/material/timepicker/c;->q:I

    iget v3, p1, Lcom/google/android/material/timepicker/c;->q:I

    if-ne v1, v3, :cond_25

    iget v1, p0, Lcom/google/android/material/timepicker/c;->t:I

    iget p1, p1, Lcom/google/android/material/timepicker/c;->t:I

    if-ne v1, p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/material/timepicker/c;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/timepicker/c;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/timepicker/c;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/timepicker/c;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/google/android/material/timepicker/c;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/google/android/material/timepicker/c;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/google/android/material/timepicker/c;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/google/android/material/timepicker/c;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.google.android.material.timepicker.c.a (com.google.android.material.timepicker.c$a)
.class final Lcom/google/android/material/timepicker/c$a;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/timepicker/c;",
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
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/timepicker/c;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/material/timepicker/c;

    invoke-direct {v0, p1}, Lcom/google/android/material/timepicker/c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/google/android/material/timepicker/c;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/material/timepicker/c;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/c$a;->a(Landroid/os/Parcel;)Lcom/google/android/material/timepicker/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/c$a;->b(I)[Lcom/google/android/material/timepicker/c;

    move-result-object p1

    return-object p1
.end method
