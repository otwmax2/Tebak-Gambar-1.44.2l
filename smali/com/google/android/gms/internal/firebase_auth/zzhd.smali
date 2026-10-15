###### Class com.google.android.gms.internal.firebase_auth.zzhd (com.google.android.gms.internal.firebase_auth.zzhd)
.class final Lcom/google/android/gms/internal/firebase_auth/zzhd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhd;->b:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->f([B)Lcom/google/android/gms/internal/firebase_auth/zzhm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhd;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/firebase_auth/zzgu;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/firebase_auth/zzgv;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhd;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->N()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhf;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhd;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhf;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/firebase_auth/zzhm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhd;->a:Lcom/google/android/gms/internal/firebase_auth/zzhm;

    return-object v0
.end method
