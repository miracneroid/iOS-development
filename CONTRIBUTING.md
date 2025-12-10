# Contributing Guide

Thank you for your interest in this iOS and macOS development repository!

## 📁 Repository Organization

This repository is organized into four main directories:

- **iOS-Projects/**: iOS application projects
- **macOS-Projects/**: macOS application projects
- **Learning-Series/**: Tutorial notes and learning materials
- **Resources/**: Templates, tools, and utilities

## 📝 Adding New Projects

When adding a new iOS or macOS project:

1. **Create a project directory** in the appropriate folder
2. **Include a README.md** using the template from `Resources/Templates/PROJECT_README_TEMPLATE.md`
3. **Document key features** and learning objectives
4. **Add screenshots** or demo videos if applicable
5. **List dependencies** and installation instructions
6. **Include comments** in complex code sections

### Project README Should Include:
- Clear description
- Features implemented
- Technologies used
- Requirements (iOS/macOS version, Xcode version)
- Installation instructions
- What you learned
- Future improvements

## 📚 Adding Learning Materials

When adding new learning notes:

1. **Choose the appropriate topic directory** in `Learning-Series/`
2. **Use the notes template** from `Resources/Templates/LEARNING_NOTES_TEMPLATE.md`
3. **Include code examples** with explanations
4. **Add practice exercises** when applicable
5. **Link to official documentation** and resources

### Learning Notes Should Include:
- Clear explanations of concepts
- Practical code examples
- Key takeaways
- Practice exercises
- Links to additional resources

## 🛠️ Adding Resources

When adding templates, tools, or snippets:

1. **Place in the appropriate subdirectory** in `Resources/`
   - `Templates/`: Project and documentation templates
   - `Snippets/`: Reusable code patterns
   - `Configs/`: Configuration files
   - `Tools/`: Scripts and utilities

2. **Document usage** clearly
3. **Include examples** when applicable

## 📐 Code Style

- Follow [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)
- Use SwiftLint configuration from `Resources/Configs/.swiftlint.yml`
- Write clear, self-documenting code
- Add comments for complex logic
- Use meaningful variable and function names

## 🧪 Testing

- Include unit tests for business logic
- Add UI tests for critical user flows
- Ensure tests pass before committing
- Document test coverage

## 📦 Dependencies

- Prefer Swift Package Manager when possible
- Document all dependencies in project README
- Keep dependencies up to date
- Minimize external dependencies

## 🌿 Git Workflow

1. Keep commits focused and atomic
2. Write clear commit messages
3. Use meaningful branch names
4. Review changes before committing

### Commit Message Format:
```
[Category] Brief description

- Detailed change 1
- Detailed change 2
```

Categories: `[iOS]`, `[macOS]`, `[Learning]`, `[Resources]`, `[Docs]`

## 📋 Checklist for New Additions

Before committing new content:

- [ ] README.md is complete and clear
- [ ] Code is well-commented
- [ ] Dependencies are documented
- [ ] Tests are included (if applicable)
- [ ] Screenshots/demos are added (if applicable)
- [ ] Follows project structure
- [ ] No sensitive data is committed
- [ ] .gitignore is respected

## 🎯 Quality Standards

- **Completeness**: Projects should be functional
- **Documentation**: All code should be documented
- **Clarity**: Explanations should be clear and concise
- **Best Practices**: Follow Apple's guidelines
- **Learning Value**: Content should be educational

## 📚 Resources

- [Swift Style Guide](https://google.github.io/swift/)
- [iOS Development Guidelines](https://developer.apple.com/ios/)
- [macOS Development Guidelines](https://developer.apple.com/macos/)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

## 🤝 Questions?

If you have questions about organization or structure, refer to the main README.md or directory-specific README files.
