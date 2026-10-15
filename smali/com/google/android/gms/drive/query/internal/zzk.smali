###### Class com.google.android.gms.drive.query.internal.zzk (com.google.android.gms.drive.query.internal.zzk)
.class public final Lcom/google/android/gms/drive/query/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/query/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/query/internal/zzj<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic c(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic d(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic e(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic f(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    .line 3
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final synthetic k0()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final synthetic o0()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->a:Ljava/lang/Boolean;

    return-object v0
.end method
