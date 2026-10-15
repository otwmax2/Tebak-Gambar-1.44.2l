###### Class y6.b (y6.b)
.class public interface abstract Ly6/b;
.super Ljava/lang/Object;
.source "SessionSubscriber.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/b$a;,
        Ly6/b$b;
    }
.end annotation


# virtual methods
.method public abstract a(Ly6/b$b;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ly6/b$a;
.end method

###### Class y6.b.a (y6.b$a)
.class public final enum Ly6/b$a;
.super Ljava/lang/Enum;
.source "SessionSubscriber.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly6/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Ly6/b$a;

.field public static final enum p:Ly6/b$a;

.field public static final enum q:Ly6/b$a;

.field private static final synthetic r:[Ly6/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ly6/b$a;

    const-string v1, "CRASHLYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly6/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/b$a;->o:Ly6/b$a;

    .line 2
    new-instance v0, Ly6/b$a;

    const-string v1, "PERFORMANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ly6/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/b$a;->p:Ly6/b$a;

    .line 3
    new-instance v0, Ly6/b$a;

    const-string v1, "MATT_SAYS_HI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ly6/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6/b$a;->q:Ly6/b$a;

    invoke-static {}, Ly6/b$a;->c()[Ly6/b$a;

    move-result-object v0

    sput-object v0, Ly6/b$a;->r:[Ly6/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic c()[Ly6/b$a;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ly6/b$a;

    sget-object v1, Ly6/b$a;->o:Ly6/b$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ly6/b$a;->p:Ly6/b$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ly6/b$a;->q:Ly6/b$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ly6/b$a;
    .registers 2

    const-class v0, Ly6/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly6/b$a;

    return-object p0
.end method

.method public static values()[Ly6/b$a;
    .registers 1

    sget-object v0, Ly6/b$a;->r:[Ly6/b$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly6/b$a;

    return-object v0
.end method

###### Class y6.b.C0304b (y6.b$b)
.class public final Ly6/b$b;
.super Ljava/lang/Object;
.source "SessionSubscriber.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/b$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly6/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ly6/b$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ly6/b$b;

    iget-object v1, p0, Ly6/b$b;->a:Ljava/lang/String;

    iget-object p1, p1, Ly6/b$b;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ly6/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionDetails(sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly6/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
