###### Class com.google.android.gms.drive.MetadataBuffer (com.google.android.gms.drive.MetadataBuffer)
.class public final Lcom/google/android/gms/drive/MetadataBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataBuffer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private p:Lcom/google/android/gms/drive/MetadataBuffer$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->o:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    return-void
.end method

.method public final g(I)Lcom/google/android/gms/drive/Metadata;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->p:Lcom/google/android/gms/drive/MetadataBuffer$a;

    if-eqz v0, :cond_a

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/drive/MetadataBuffer$a;->v(Lcom/google/android/gms/drive/MetadataBuffer$a;)I

    move-result v1

    if-eq v1, p1, :cond_13

    .line 3
    :cond_a
    new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer$a;

    iget-object v1, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->o:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/drive/MetadataBuffer$a;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->p:Lcom/google/android/gms/drive/MetadataBuffer$a;

    :cond_13
    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/MetadataBuffer;->g(I)Lcom/google/android/gms/drive/Metadata;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.drive.MetadataBuffer.a (com.google.android.gms.drive.MetadataBuffer$a)
.class final Lcom/google/android/gms/drive/MetadataBuffer$a;
.super Lcom/google/android/gms/drive/Metadata;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/data/DataHolder;

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/Metadata;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->o:Lcom/google/android/gms/common/data/DataHolder;

    .line 3
    iput p2, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->p:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->q:I

    return-void
.end method

.method static synthetic v(Lcom/google/android/gms/drive/MetadataBuffer$a;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->p:I

    return p0
.end method


# virtual methods
.method public final t(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->o:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->p:I

    iget v2, p0, Lcom/google/android/gms/drive/MetadataBuffer$a;->q:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/metadata/MetadataField;->a(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
