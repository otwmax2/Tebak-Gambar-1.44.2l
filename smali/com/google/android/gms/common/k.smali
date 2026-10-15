###### Class com.google.android.gms.common.k (com.google.android.gms.common.k)
.class final Lcom/google/android/gms/common/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field static final a:[Lcom/google/android/gms/common/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/h;

    .line 1
    sget-object v1, Lcom/google/android/gms/common/l;->c:Lcom/google/android/gms/common/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/common/l;->d:Lcom/google/android/gms/common/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/k;->a:[Lcom/google/android/gms/common/h;

    return-void
.end method
