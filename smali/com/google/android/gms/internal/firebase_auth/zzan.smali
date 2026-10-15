###### Class com.google.android.gms.internal.firebase_auth.zzan (com.google.android.gms.internal.firebase_auth.zzan)
.class final Lcom/google/android/gms/internal/firebase_auth/zzan;
.super Lcom/google/android/gms/internal/firebase_auth/zzal;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final o:Ljava/util/regex/Pattern;


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase_auth/zzam;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzan;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzaq;-><init>(Ljava/util/regex/Matcher;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzan;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
