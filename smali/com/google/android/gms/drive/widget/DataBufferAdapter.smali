###### Class com.google.android.gms.drive.widget.DataBufferAdapter (com.google.android.gms.drive.widget.DataBufferAdapter)
.class public Lcom/google/android/gms/drive/widget/DataBufferAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final u:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final o:I

.field private p:I

.field private final q:I

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final s:Landroid/view/LayoutInflater;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "DataBufferAdapter"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->u:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method private final a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_9

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->s:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_9
    :try_start_9
    iget p3, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->q:I

    if-nez p3, :cond_11

    .line 3
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    goto :goto_17

    .line 4
    :cond_11
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_17} :catch_2d

    .line 5
    :goto_17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    instance-of p4, p1, Ljava/lang/CharSequence;

    if-eqz p4, :cond_25

    .line 7
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 8
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2c
    return-object p2

    :catch_2d
    move-exception p1

    .line 9
    sget-object p2, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->u:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "DataBufferAdapter"

    const-string p4, "You must supply a resource ID for a TextView"

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "DataBufferAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_19
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->p:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/CursorIndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataBuffer;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v3

    if-gt v3, v1, :cond_1b

    sub-int/2addr v1, v3

    goto :goto_7

    .line 3
    :cond_1b
    :try_start_1b
    invoke-interface {v2, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1b .. :try_end_1f} :catch_20

    return-object p1

    .line 4
    :catch_20
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 5
    :cond_2a
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    goto :goto_35

    :goto_34
    throw v0

    :goto_35
    goto :goto_34
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->o:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/widget/DataBufferAdapter;->t:Z

    return-void
.end method
