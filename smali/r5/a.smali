###### Class r5.a (r5.a)
.class public final Lr5/a;
.super Ljava/lang/Object;
.source "AutoRolloutAssignmentEncoder.java"

# interfaces
.implements Le6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/a$a;
    }
.end annotation


# static fields
.field public static final a:Le6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lr5/a;

    invoke-direct {v0}, Lr5/a;-><init>()V

    sput-object v0, Lr5/a;->a:Le6/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le6/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le6/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lr5/i;

    sget-object v1, Lr5/a$a;->a:Lr5/a$a;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 2
    const-class v0, Lr5/b;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    return-void
.end method

###### Class r5.a.C0226a (r5.a$a)
.class final Lr5/a$a;
.super Ljava/lang/Object;
.source "AutoRolloutAssignmentEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lr5/i;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lr5/a$a;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lr5/a$a;

    invoke-direct {v0}, Lr5/a$a;-><init>()V

    sput-object v0, Lr5/a$a;->a:Lr5/a$a;

    const-string v0, "rolloutId"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lr5/a$a;->b:Ld6/c;

    const-string v0, "parameterKey"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lr5/a$a;->c:Ld6/c;

    const-string v0, "parameterValue"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lr5/a$a;->d:Ld6/c;

    const-string v0, "variantId"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lr5/a$a;->e:Ld6/c;

    const-string v0, "templateVersion"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lr5/a$a;->f:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lr5/i;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lr5/a$a;->b(Lr5/i;Ld6/e;)V

    return-void
.end method

.method public b(Lr5/i;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lr5/a$a;->b:Ld6/c;

    invoke-virtual {p1}, Lr5/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lr5/a$a;->c:Ld6/c;

    invoke-virtual {p1}, Lr5/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lr5/a$a;->d:Ld6/c;

    invoke-virtual {p1}, Lr5/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 4
    sget-object v0, Lr5/a$a;->e:Ld6/c;

    invoke-virtual {p1}, Lr5/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 5
    sget-object v0, Lr5/a$a;->f:Ld6/c;

    invoke-virtual {p1}, Lr5/i;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    return-void
.end method
