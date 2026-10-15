###### Class com.google.android.gms.drive.query.internal.a (com.google.android.gms.drive.query.internal.a)
.class final Lcom/google/android/gms/drive/query/internal/a;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            ")",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Z3()Ljava/util/Set;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/metadata/MetadataField;

    return-object p0

    .line 4
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bundle should have exactly 1 populated field"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
