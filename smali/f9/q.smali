###### Class f9.q (f9.q)
.class public Lf9/q;
.super Ljava/lang/Object;
.source "UserEntities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf9/q$a;
    }
.end annotation


# instance fields
.field public final a:Lf9/q$a;
    .annotation runtime Lb7/c;
        value = "url"
    .end annotation
.end field

.field public final b:Lf9/q$a;
    .annotation runtime Lb7/c;
        value = "description"
    .end annotation
.end field

###### Class f9.q.a (f9.q$a)
.class public Lf9/q$a;
.super Ljava/lang/Object;
.source "UserEntities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf9/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lf9/q$a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lf9/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf9/q$a;->a:Ljava/util/List;

    return-void
.end method
