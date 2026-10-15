###### Class r.a (r.a)
.class public Lr/a;
.super Ljava/lang/Object;
.source "WidgetFrame.java"


# instance fields
.field public a:Ls/e;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:I

.field public final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ls/e;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lr/a;->a:Ls/e;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lr/a;->b:I

    .line 4
    iput v1, p0, Lr/a;->c:I

    .line 5
    iput v1, p0, Lr/a;->d:I

    .line 6
    iput v1, p0, Lr/a;->e:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 7
    iput v2, p0, Lr/a;->f:F

    .line 8
    iput v2, p0, Lr/a;->g:F

    .line 9
    iput v2, p0, Lr/a;->h:F

    .line 10
    iput v2, p0, Lr/a;->i:F

    .line 11
    iput v2, p0, Lr/a;->j:F

    .line 12
    iput v2, p0, Lr/a;->k:F

    .line 13
    iput v2, p0, Lr/a;->l:F

    .line 14
    iput v2, p0, Lr/a;->m:F

    .line 15
    iput v2, p0, Lr/a;->n:F

    .line 16
    iput v2, p0, Lr/a;->o:F

    .line 17
    iput v2, p0, Lr/a;->p:F

    .line 18
    iput v2, p0, Lr/a;->q:F

    .line 19
    iput v1, p0, Lr/a;->r:I

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lr/a;->s:Ljava/util/HashMap;

    .line 21
    iput-object v0, p0, Lr/a;->t:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lr/a;->a:Ls/e;

    return-void
.end method
