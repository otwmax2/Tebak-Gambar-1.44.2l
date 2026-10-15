###### Class com.google.android.gms.internal.firebase_messaging.zza (com.google.android.gms.internal.firebase_messaging.zza)
.class final Lcom/google/android/gms/internal/firebase_messaging/zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Ls6/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/gms/internal/firebase_messaging/zza;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;

.field private static final h:Ld6/c;

.field private static final i:Ld6/c;

.field private static final j:Ld6/c;

.field private static final k:Ld6/c;

.field private static final l:Ld6/c;

.field private static final m:Ld6/c;

.field private static final n:Ld6/c;

.field private static final o:Ld6/c;

.field private static final p:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->a:Lcom/google/android/gms/internal/firebase_messaging/zza;

    const-string v0, "projectNumber"

    .line 1
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->b:Ld6/c;

    const-string v0, "messageId"

    .line 6
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->c:Ld6/c;

    const-string v0, "instanceId"

    .line 11
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->d:Ld6/c;

    const-string v0, "messageType"

    .line 16
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->e:Ld6/c;

    const-string v0, "sdkPlatform"

    .line 21
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->f:Ld6/c;

    const-string v0, "packageName"

    .line 26
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x6

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->g:Ld6/c;

    const-string v0, "collapseKey"

    .line 31
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 32
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x7

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->h:Ld6/c;

    const-string v0, "priority"

    .line 36
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->i:Ld6/c;

    const-string v0, "ttl"

    .line 41
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 42
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0x9

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->j:Ld6/c;

    const-string v0, "topic"

    .line 46
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 47
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0xa

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->k:Ld6/c;

    const-string v0, "bulkId"

    .line 51
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 52
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0xb

    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->l:Ld6/c;

    const-string v0, "event"

    .line 56
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 57
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0xc

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->m:Ld6/c;

    const-string v0, "analyticsLabel"

    .line 61
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 62
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0xd

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->n:Ld6/c;

    const-string v0, "campaignId"

    .line 66
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 67
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0xe

    .line 68
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->o:Ld6/c;

    const-string v0, "composerLabel"

    .line 71
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 72
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/16 v2, 0xf

    .line 73
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->p:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ls6/a;

    check-cast p2, Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->b:Ld6/c;

    .line 2
    invoke-virtual {p1}, Ls6/a;->l()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->c:Ld6/c;

    .line 3
    invoke-virtual {p1}, Ls6/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->d:Ld6/c;

    .line 4
    invoke-virtual {p1}, Ls6/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->e:Ld6/c;

    .line 5
    invoke-virtual {p1}, Ls6/a;->i()Ls6/a$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->f:Ld6/c;

    .line 6
    invoke-virtual {p1}, Ls6/a;->m()Ls6/a$d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->g:Ld6/c;

    .line 7
    invoke-virtual {p1}, Ls6/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->h:Ld6/c;

    .line 8
    invoke-virtual {p1}, Ls6/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->i:Ld6/c;

    .line 9
    invoke-virtual {p1}, Ls6/a;->k()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/e;->d(Ld6/c;I)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->j:Ld6/c;

    .line 10
    invoke-virtual {p1}, Ls6/a;->o()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/e;->d(Ld6/c;I)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->k:Ld6/c;

    .line 11
    invoke-virtual {p1}, Ls6/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->l:Ld6/c;

    .line 12
    invoke-virtual {p1}, Ls6/a;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->m:Ld6/c;

    .line 13
    invoke-virtual {p1}, Ls6/a;->f()Ls6/a$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->n:Ld6/c;

    .line 14
    invoke-virtual {p1}, Ls6/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->o:Ld6/c;

    .line 15
    invoke-virtual {p1}, Ls6/a;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zza;->p:Ld6/c;

    .line 16
    invoke-virtual {p1}, Ls6/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method
