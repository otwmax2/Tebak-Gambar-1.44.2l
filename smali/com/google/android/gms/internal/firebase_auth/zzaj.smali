###### Class com.google.android.gms.internal.firebase_auth.zzaj (com.google.android.gms.internal.firebase_auth.zzaj)
.class final Lcom/google/android/gms/internal/firebase_auth/zzaj;
.super Lcom/google/android/gms/internal/firebase_auth/zzak;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field static final b:Lcom/google/android/gms/internal/firebase_auth/zzaj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaj;->b:Lcom/google/android/gms/internal/firebase_auth/zzaj;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzak;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .registers 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v0, "index"

    .line 2
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->b(IILjava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public final b(C)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
