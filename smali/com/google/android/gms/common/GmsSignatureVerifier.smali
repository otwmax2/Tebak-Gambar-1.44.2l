###### Class com.google.android.gms.common.GmsSignatureVerifier (com.google.android.gms.common.GmsSignatureVerifier)
.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/b;

.field private static final b:Lcom/google/android/gms/common/b;

.field private static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/p;

    invoke-direct {v0}, Lcom/google/android/gms/common/p;-><init>()V

    const-string v1, "com.google.android.gms"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/p;->d(Ljava/lang/String;)Lcom/google/android/gms/common/p;

    const-wide/32 v1, 0xc2bd840

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/p;->a(J)Lcom/google/android/gms/common/p;

    sget-object v1, Lcom/google/android/gms/common/l;->d:Lcom/google/android/gms/common/j;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/j;->Q4()[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/l;->b:Lcom/google/android/gms/common/j;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/j;->Q4()[B

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzag;->s(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/p;->c(Ljava/util/List;)Lcom/google/android/gms/common/p;

    sget-object v2, Lcom/google/android/gms/common/l;->c:Lcom/google/android/gms/common/j;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/j;->Q4()[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/l;->a:Lcom/google/android/gms/common/j;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/common/j;->Q4()[B

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzag;->s(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/p;->b(Ljava/util/List;)Lcom/google/android/gms/common/p;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/p;->e()Lcom/google/android/gms/common/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->a:Lcom/google/android/gms/common/b;

    new-instance v0, Lcom/google/android/gms/common/p;

    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/common/p;-><init>()V

    const-string v3, "com.android.vending"

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/p;->d(Ljava/lang/String;)Lcom/google/android/gms/common/p;

    const-wide/32 v3, 0x4e6e200

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/p;->a(J)Lcom/google/android/gms/common/p;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/common/j;->Q4()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/p;->c(Ljava/util/List;)Lcom/google/android/gms/common/p;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/common/j;->Q4()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/p;->b(Ljava/util/List;)Lcom/google/android/gms/common/p;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/p;->e()Lcom/google/android/gms/common/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->b:Lcom/google/android/gms/common/b;

    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->c:Ljava/util/HashMap;

    return-void
.end method
