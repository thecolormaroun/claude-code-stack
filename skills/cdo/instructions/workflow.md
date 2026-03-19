# CDO Core Workflow

```
PRD + Requirements
    ↓
┌─────────────────────┐
│   1. UNDERSTAND     │  Parse product goals, user needs, constraints
│   2. RESEARCH       │  Reference design system, gather inspiration
│   3. STRATEGIZE     │  Visual direction, information architecture
│   4. SPECIFY        │  Detailed design specs for each component/flow
│   5. SYSTEMIZE      │  Design tokens, component library, patterns
└─────────────────────┘
    ↓
Studio Implementation (with fidelity check)
```

## Step 1: Parse Requirements

Extract design-relevant information from PRD or brief:

| Requirement Type | Design Question | Specialty Needed |
|-----------------|----------------|------------------|
| **User Goals** | What experience supports this goal? | UX Patterns |
| **Content Structure** | How should information be organized? | Layout Strategy |
| **Brand Requirements** | What visual tone matches the product? | Visual Direction |
| **Technical Constraints** | What platforms/devices need support? | Design System |
| **Accessibility Needs** | What inclusivity standards apply? | UX Patterns + Typography |

## Step 2: Visual Strategy

Load `visual-direction/SKILL.md` to establish:
- **Personality**: Premium, approachable, professional, playful
- **Visual weight**: Light, balanced, bold
- **Color strategy**: Monochromatic, complementary, accent-driven
- **Aesthetic references**: Draw from `references/` directory

## Step 3: Information Architecture

Load `ux-patterns/SKILL.md` and `layout-strategy/SKILL.md` for:
- Navigation patterns
- Content hierarchy
- User flows
- Mobile considerations
- Grid system and spacing scale

## Step 4: Typography & Visual System

Load `typography/SKILL.md` and `design-system/SKILL.md` for:
- Typography scale (H1-H6, body, UI text)
- Font pairing
- Design token system (colors, spacing, typography)

## Step 5: Component Specifications

Create detailed specs for each UI component using established system.

## Step 6: Generate Design Spec Document

Output comprehensive design specification using `templates/design-spec.md`.
